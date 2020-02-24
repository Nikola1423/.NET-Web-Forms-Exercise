using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForms.NET
{
    public partial class SelectItems : System.Web.UI.Page
    {
        string[] Genre = { "Drama", "Comedy", "Action" };
        string[] Drama = { "Forest Gump (150)", "Good Will Hunting (130)", "Beautiful Mind (100)" };
        string[] Comedy = { "Mr. Bean (120)", "Masterminds (170)", "Ted2 (180)" };
        string[] Action = { "Batman (350)", "Deadpool (300)", "Superman (200)" };
        string[] PriceD = { "150", "130", "100" };
        string[] PriceC = { "120", "170", "180" };
        string[] PriceA = { "350", "300", "200" };
      

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenreList.DataSource = Genre;
                GenreList.DataBind();
            }
          
        }
        //GENRELIST DATA
        protected void GenreList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (GenreList.SelectedIndex == 0)
            {
                MovieList.DataSource = Drama;

            }
            if (GenreList.SelectedIndex == 1)
            {
                MovieList.DataSource = Comedy;

            }
            if (GenreList.SelectedIndex == 2)
            {
                MovieList.DataSource = Action;

            }

            MovieList.DataBind();
        }
        //ADD BUTTON
        protected void Add_Click(object sender, EventArgs e)
        {
            if (GenreList.SelectedIndex != -1)
            {
                if (MovieList.SelectedIndex != -1)
                {

                    //EMPTY SELECTION FIX AND ADD ITEMS
                    if (FinalList.Items.Contains(MovieList.SelectedItem))
                    {

                    }
                    else
                        FinalList.Items.Add(MovieList.SelectedItem);
                    
                    //PRICE FUNCTION

                    int Price = 0;
                    for (int i = 0; i < FinalList.Items.Count; i++)
                    {                        
                      
                        if (Drama.Contains(FinalList.Items[i].Text))
                        {
                            
                            Price += int.Parse(PriceD[Array.IndexOf(Drama, FinalList.Items[i].Text)]);
                        }

                        if (Action.Contains(FinalList.Items[i].Text))
                        {
                            Price += int.Parse(PriceA[Array.IndexOf(Action, FinalList.Items[i].Text)]);
                        }

                        if (Comedy.Contains(FinalList.Items[i].Text))
                        {
                            Price += int.Parse(PriceC[Array.IndexOf(Comedy, FinalList.Items[i].Text)]);
                        }
                        Session["Price"] = Price;
                        
                        
                    }
                 //PRICE OF ADDED ITEMS
                    Label1.Text = "" + Session["Price"]; 
                }
                
            }
            
        }
        //REMOVE BUTTON
        protected void Remove_Click(object sender, EventArgs e)
        {
            
            if (FinalList.SelectedIndex != -1)
            {
               //SUBSTRACT THE PRICE OF ITEM
                if(Drama.Contains(FinalList.SelectedItem.Text))
                {
                    Session["Price"] = (int)Session["Price"] -int.Parse(PriceD[Array.IndexOf(Drama, FinalList.SelectedItem.Text)]);
                    Label1.Text =""+Session["Price"];
                    Session["Price"] = Session["Price"];              
                    
                }
                if (Comedy.Contains(FinalList.SelectedItem.Text))
                {
                    Session["Price"] = (int)Session["Price"] - int.Parse(PriceC[Array.IndexOf(Comedy, FinalList.SelectedItem.Text)]);
                    Label1.Text = "" + Session["Price"];
                    Session["Price"] = Session["Price"];

                }
                if (Action.Contains(FinalList.SelectedItem.Text))
                {
                    Session["Price"] = (int)Session["Price"] - int.Parse(PriceA[Array.IndexOf(Action, FinalList.SelectedItem.Text)]);
                    Label1.Text = "" + Session["Price"];
                    Session["Price"] = Session["Price"];

                }
                //REMOVE ITEM
                FinalList.Items.Remove(FinalList.SelectedItem);

            }
        }
        //CHECKOUT BUTTON
        protected void CheckOut_Click(object sender, EventArgs e)
        {
            if (FinalList.Items.Count >= 1)
            {        
                //ADD ITEMS TO CHEKOUT LIST
                for (int i = 0; i < FinalList.Items.Count; i++)
                {
                    String CheckoutList = (FinalList.Items[i].Text + ", ");
                    Session["CheckoutList"] += CheckoutList;
                }
               
                Response.Redirect("Checkout.aspx");
            }
        }
    }
}
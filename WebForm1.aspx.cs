using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace WestcoastEducation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == true)
            {
                Label1.Text = ("Klart!");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection Westcoastconn = new SqlConnection("Server=tcp:inlamning1mikaeljensen.database.windows.net,1433;Initial Catalog=Inlämning1MikaelJensen;Persist Security Info=False;User ID=Lindskog;Password=123Homework!;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                SqlCommand insert = new SqlCommand("EXEC dbo.InsertUsers @Förnamn, @Efternamn, @Epost, @Mobilnummer, @Adress", Westcoastconn);
                insert.Parameters.AddWithValue("@Förnamn", TextBox1.Text);
                insert.Parameters.AddWithValue("@Efternamn", TextBox2.Text);
                insert.Parameters.AddWithValue("@Epost", TextBox3.Text);
                insert.Parameters.AddWithValue("@Mobilnummer", TextBox4.Text);
                insert.Parameters.AddWithValue("@Adress", TextBox5.Text);


                Westcoastconn.Open();
                insert.ExecuteNonQuery();
                Westcoastconn.Close();

                if (IsPostBack)
                {
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";

                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection Westcoastconn = new SqlConnection("Server=tcp:inlamning1mikaeljensen.database.windows.net,1433;Initial Catalog=Inlämning1MikaelJensen;Persist Security Info=False;User ID=Lindskog;Password=123Homework!;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                Westcoastconn.Open();
                SqlCommand search = new SqlCommand();
                string sqlquery = "select * from [dbo].[Kurser] where Title like '%'+@Title+'%'";
                search.CommandText = sqlquery;
                search.Connection = Westcoastconn;
                search.Parameters.AddWithValue("Title", Textsearch.Text);
                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(search);
                sda.Fill(dt);
                GridView2.DataSource = dt;
                GridView2.DataBind();
            }
        }
    }
}
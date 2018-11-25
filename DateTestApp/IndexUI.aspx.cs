using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DateTestApp
{
    public partial class IndexUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar.Visible = false;
                CalendarTo.Visible = false;
            }
        }

        protected void showButton_Click(object sender, EventArgs e)
        {
            //showDateTextBox.Text= DateTime.Now.ToString("dd-MM-yyyy");
            showDateTextBox.Text = dateTextBox.Text;

            string connectionString = "Data Source=(local);Initial Catalog=DateTestDB;Integrated Security=True";
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * FROM DateTable WHERE Date BETWEEN '"+calenderTextBox.Text+"' AND '"+calenederToTextBox.Text+"'";
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            List<DateClass> studentList = new List<DateClass>();
            while (reader.Read())
            {
                DateClass d=new DateClass();
                d.Date = reader["Date"].ToString();
                studentList.Add(d);
            }
            dateGridView.DataSource = studentList;
            dateGridView.DataBind();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar.Visible)
            {
                Calendar.Visible = false;
            }
            else
            {
                Calendar.Visible = true;
            }
        }

        protected void Calendar_SelectionChanged(object sender, EventArgs e)
        {
            calenderTextBox.Text = Calendar.SelectedDate.ToString("dd-MM-yyyy");
            Calendar.Visible = false;
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (CalendarTo.Visible)
            {
                CalendarTo.Visible = false;
            }
            else
            {
                CalendarTo.Visible = true;
            }
        }

        protected void CalendarEnd_SelectionChanged(object sender, EventArgs e)
        {
            calenederToTextBox.Text = CalendarTo.SelectedDate.ToString("dd-MM-yyyy");
            CalendarTo.Visible = false;
        }
    }
}//SELECT * FROM DateTable where Date between '12-11-2018' and '20-11-2018'
//Data Source=(local);Initial Catalog=DateTestDB;Integrated Security=True
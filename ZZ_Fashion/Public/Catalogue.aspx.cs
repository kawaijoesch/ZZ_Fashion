﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZZ_Fashion.Public {
    public partial class Catalogue : System.Web.UI.Page {

        protected void Page_Init(object sender, EventArgs e) {
            displayCatalogue();
        }

        protected void Page_Load(object sender, EventArgs e) {

        }

        private void displayCatalogue() {
            //Read connection string "DWABookConnectionString" from web.config file
            string strConn = ConfigurationManager.ConnectionStrings["ZZFashionCRMConnectionString"].ToString();

            //Instantiate a Sqlconnection object with the Connection String read.
            SqlConnection conn = new SqlConnection(strConn);

            //Instantiate a SqlCommand object, supply it with the SQL statement
            //SELECT  that operates against the database, and the connection object
            //used for connecting to the database.
            SqlCommand cmd = new SqlCommand("SELECT ProductTitle AS Product, CONCAT(\'S$\', CAST(Price AS decimal(18,2))) AS Price FROM Product WHERE Obsolete = 1", conn);

            //Instantiate a DataAdapter object and pass the SqlCommand object
            //Created as parameter.
            SqlDataAdapter daProduct = new SqlDataAdapter(cmd);

            //Create a DataSet object to contain the records retrieved from database
            DataSet result = new DataSet();

            //A connection must be opened before any operation made.
            conn.Open();

            //Use DataAdapter to fetch data to a table "StaffDetails" in DataSet.
            //Dataset "result" will store the result of the SELECT operation.
            daProduct.Fill(result, "Product");

            //A connection should always be closed, whether error occurs or not.
            conn.Close();

            //Specify GridView to get data from table "StaffDetails"
            //In DataSet "result"
            gv.DataSource = result.Tables["Product"];

            //Display the list of data in GridView
            gv.DataBind();
        }

        protected void gv_PageIndexChanging(object sender, GridViewPageEventArgs e) {
            //Set the page index to the page clicked by user.
            gv.PageIndex = e.NewPageIndex;
            //Display records on the new page.
            displayCatalogue();
        }

    }
}
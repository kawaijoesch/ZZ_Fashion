﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZZ_Fashion.LoginPages.Marketing {

    public partial class FeedbackResponse : System.Web.UI.Page {

        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
                LoadInformation();
            }
        }
        

        protected void LoadInformation() {
            var title = Request.QueryString["title"];
            var id = Request.QueryString["id"];
            var customer = Request.QueryString["customer"];
            var text = Request.QueryString["text"];
            var attachement = Request.QueryString["attachement"];
            DateTime posted;

            if (title != null && id != null && customer != null && DateTime.TryParse(Request.QueryString["posted"], out posted) && text != null) {
                FeedbackTitle.Text = title;
                Information.Text = "Feedback: " + id + " created by customer: " + customer + " on " + posted.ToShortDateString();
                Feedback.Text = text;
                Attached.ImageUrl = Request.QueryString["attachment"];

            } else {
                DisableConfirmButton("Invalid URL, click the cancel button to return to the previous page");
            }
        }


        protected void OnConfirm(object sender, EventArgs e) {
            DisableConfirmButton();
            Database.INSTANCE.Execute(
                "INSERT INTO Response (FeedbackID, MemberID, StaffID, DateTimePosted, Text) VALUES (%id, %member, %staff, %posted, %text)", 
                command => {
                    var parameters = command.Parameters;
                    parameters.AddWithValue("%id", Request.QueryString["id"]);
                    parameters.AddWithValue("%member", Request.QueryString["customer"]);
                    parameters.AddWithValue("%staff", Session["ID"]);
                    parameters.AddWithValue("%posted", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff"));
                    parameters.AddWithValue("%text", NewResponse.Text);

                    int inserted = command.ExecuteNonQuery();
                    if (inserted == 1) {
                        Response.Redirect("./CustomerFeedback.aspx?message=Succesfully created response for feedback: " + Request.QueryString["id"]);

                    } else {
                        Message.Text = "Failed to create response, click the cancel button to return to the previous page";
                    }

                }, ex => Message.Text = "Failed to create response, click the cancel button to return to the previous page");
        }

        protected void OnCancel(object sender, EventArgs e) {
            Response.Redirect("./CustomerFeedback.aspx?message=Cancelled response to feedback: " + Request.QueryString["id"]);
        }


        protected void DisableConfirmButton(string message = "") {
            Message.Text = message;
            Confirm.Enabled = false;
            Confirm.UseSubmitBehavior = false;
        }

    }
}
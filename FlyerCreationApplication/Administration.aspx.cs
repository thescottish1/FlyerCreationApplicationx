using System;
using System.Data.Entity;
using System.Configuration;
using System.Data.Linq;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FlyerCreationApplication.Models;// important to use models creted from database!

namespace FlyerCreationApplication
{
    public partial class Administration : System.Web.UI.Page
    {
        //global variable for connection string - global to whole app?
        //string cs = ConfigurationManager.ConnectionStrings["FlyerEntities"].ConnectionString; 
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
               
            }
        }

        var dealer = new DealerBas();
        

        
    }
}


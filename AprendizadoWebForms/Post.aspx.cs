using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AprendizadoWebForms
{
    public partial class Post : System.Web.UI.Page
    {
        public string pPersonName { get; set; }
        public bool pPrintItRed { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.RequestType == "POST")
            {
                pPersonName = PersonName.Value;
                pPrintItRed = PrintItRed.Checked;
            }
        }
    }
}
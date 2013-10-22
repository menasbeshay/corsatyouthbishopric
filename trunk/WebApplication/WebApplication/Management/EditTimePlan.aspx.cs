using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Corsat.BLL;

namespace WebApplication.Management
{
    public partial class EditTimePlan : System.Web.UI.Page
    {
        #region properties
        public int CurrentPage
        {
            get
            {
                if (ViewState["CurrentPage"] != null)
                    return Convert.ToInt32(ViewState["CurrentPage"]);
                else
                    return 0;
            }
            set
            {
                ViewState["CurrentPage"] = value;
            }
        }

        public TimePlan CurrentTimePlanItem
        {
            get
            {
                if (Session["CurrentTimePlanItem"] != null)
                    return (TimePlan)Session["CurrentTimePlanItem"];
                else
                    return null;
            }
            set
            {
                Session["CurrentTimePlanItem"] = value;
            }
        }
        #endregion
        #region Events
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTimePlan();
                uiPanelEdit.Visible = false;
                uiPanelViewAllTimes.Visible = true;
            }
        }

        protected void uiGridViewTimes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            uiGridViewTimes.PageIndex = e.NewPageIndex;
            BindTimePlan();
        }

        protected void uiGridViewTimes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditTime")
            {
                int id = Convert.ToInt32(e.CommandArgument.ToString());
                TimePlan _Time = new TimePlan();
                _Time.LoadByPrimaryKey(id);
                CurrentTimePlanItem = _Time;
                uiPanelEdit.Visible = true;
                uiPanelViewAllTimes.Visible = false;
                uiTextBoxName.Text = CurrentTimePlanItem.Title;
                uiCheckBoxVisible.Checked = CurrentTimePlanItem.IsVisible;
                uiTextBoxDate.Text = CurrentTimePlanItem.PublishedDate.ToString("dd/MM/yyyy");
            }
            else if (e.CommandName == "DeleteTime")
            {
                int id = Convert.ToInt32(e.CommandArgument.ToString());
                TimePlan _Time = new TimePlan();
                _Time.LoadByPrimaryKey(id);
                try
                {
                    _Time.MarkAsDeleted();
                    _Time.Save();
                    BindTimePlan();
                }
                catch (Exception ex)
                {
                    // handle error here
                }
            }
        }

        protected void uiButtonOk_Click(object sender, EventArgs e)
        {
            if (CurrentTimePlanItem != null)
            {
                UpdateTimePlanItem();                
            }
            else
            {
                AddTimePlanItem();                
            }
            CurrentTimePlanItem = null;
            uiPanelViewAllTimes.Visible = true;
            uiPanelEdit.Visible = false;
            BindTimePlan();
            ClearFields();
        }


        protected void uiButtonCancel_Click(object sender, EventArgs e)
        {
            CurrentTimePlanItem = null;
            uiPanelViewAllTimes.Visible = true;
            uiPanelEdit.Visible = false;
            ClearFields();
        }


        protected void uiLinkButtonAdd_Click(object sender, EventArgs e)
        {
            CurrentTimePlanItem = null;
            uiPanelViewAllTimes.Visible = false;
            uiPanelEdit.Visible = true;
            ClearFields();
        }
        #endregion

        #region Methods


        private void BindTimePlan()
        {
            TimePlan objTimes = new TimePlan();
            objTimes.LoadAll();
            uiGridViewTimes.DataSource = objTimes.DefaultView;
            uiGridViewTimes.DataBind();
        }


        private void AddTimePlanItem()
        {
            TimePlan _Time = new TimePlan();
            _Time.AddNew();
            _Time.Title = uiTextBoxName.Text;
            _Time.PublishedDate = DateTime.ParseExact(uiTextBoxDate.Text, "dd/MM/yyyy", null);
            _Time.IsVisible = uiCheckBoxVisible.Checked;
            _Time.Save();
        }

        private void UpdateTimePlanItem()
        {            
            CurrentTimePlanItem.Title = uiTextBoxName.Text;
            CurrentTimePlanItem.PublishedDate = DateTime.ParseExact(uiTextBoxDate.Text, "dd/MM/yyyy", null);
            CurrentTimePlanItem.IsVisible = uiCheckBoxVisible.Checked;
            CurrentTimePlanItem.Save();
        }

        private void ClearFields()
        {
            uiTextBoxDate.Text = "";
            uiTextBoxName.Text = "";
            uiCheckBoxVisible.Checked = false;
        }

        #endregion

    }
}
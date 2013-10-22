using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Corsat.BLL;

namespace WebApplication.Management
{
    public partial class EditCourses : System.Web.UI.Page
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

        public Course CurrentCourse
        {
            get
            {
                if (Session["CurrentCourse"] != null)
                    return (Course)Session["CurrentCourse"];
                else
                    return null;
            }
            set
            {
                Session["CurrentCourse"] = value;
            }
        }
        #endregion

        #region Events 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCourses();
                uiPanelEdit.Visible = false;
                uiPanelViewAllPages.Visible = true;
            }
        }

        protected void uiGridViewCourses_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditCourse")
            {
                int id = Convert.ToInt32(e.CommandArgument.ToString());
                Course _course = new Course();
                _course.LoadByPrimaryKey(id);
                CurrentCourse = _course;
                uiPanelEdit.Visible = true;
                uiPanelViewAllPages.Visible = false;
                uiTextBoxName.Text = CurrentCourse.Name;
                uiTextBoxLevel.Text = CurrentCourse.CourseLevel.ToString();
            }
        }

        protected void uiGridViewCourses_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            uiGridViewCourses.PageIndex = e.NewPageIndex;
            BindCourses();
        }


        protected void uiButtonOk_Click(object sender, EventArgs e)
        {
            if (CurrentCourse != null)
            {
                CurrentCourse.Name = uiTextBoxName.Text;
                CurrentCourse.CourseLevel = Convert.ToInt32(uiTextBoxLevel.Text);
                CurrentCourse.Save();
                CurrentCourse = null;
                uiPanelViewAllPages.Visible = true;
                uiPanelEdit.Visible = false;
                BindCourses();
                ClearFields();
            }
        }

        protected void uiButtonCancel_Click(object sender, EventArgs e)
        {
            CurrentCourse = null;
            uiPanelViewAllPages.Visible = true;
            uiPanelEdit.Visible = false;
            ClearFields();
        }

        #endregion 

        #region Methods


        private void BindCourses()
        {
            Course objCourses = new Course();
            objCourses.LoadAll();
            uiGridViewCourses.DataSource = objCourses.DefaultView;
            uiGridViewCourses.DataBind();
        }


        private void ClearFields()
        {
            uiTextBoxLevel.Text = "";
            uiTextBoxName.Text = "";
        }

        #endregion
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASPSnippets.FaceBookAPI;
using System.Web.Script.Serialization;
using System.Text;

namespace Massimodutti
{
    public partial class Massimodutti : System.Web.UI.MasterPage
    {
        public string connectionstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        public int NumberMenu3PerColumn = Convert.ToInt32(ConfigurationManager.AppSettings["NumberMenu3PerColumn"]);
        public static string parentCategory = string.Empty;
        public static string category = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetPMenuData();
                GetCMenuData();
            }
        }

        void LoginFacebook()
        {
            FaceBookConnect.API_Key = ConfigurationManager.AppSettings["FacebookAppId"];
            FaceBookConnect.API_Secret = ConfigurationManager.AppSettings["FacebookAppSecret"];
            if (!IsPostBack)
            {
                if (Request.QueryString["error"] == "access_denied")
                {
                    System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('User has denied access.');", true);
                    //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('User has denied access.')", true);
                    return;
                }

                string code = Request.QueryString["code"];
                if (!string.IsNullOrEmpty(code))
                {
                    string data = FaceBookConnect.Fetch(code, "me");
                    FaceBookUser faceBookUser = new JavaScriptSerializer().Deserialize<FaceBookUser>(data);
                    faceBookUser.PictureUrl = string.Format("https://graph.facebook.com/{0}/picture", faceBookUser.Id);
                    //pnlFaceBookUser.Visible = true;
                    //lblId.Text = faceBookUser.Id;
                    //lblUserName.Text = faceBookUser.UserName;
                    //lblName.Text = faceBookUser.Name;
                    //lblEmail.Text = faceBookUser.Email;
                    //ProfileImage.ImageUrl = faceBookUser.PictureUrl;
                    //lblBirthday.Text = faceBookUser.Birthday;
                    //lblGender.Text = faceBookUser.Gender;
                    ////lblLocation.Text = faceBookUser.Location.Name;
                    //btnLogin.Enabled = false;
                    Session["User"] = faceBookUser.Id;
                }
            }
        }

        public void GetPMenuData()
        {
            var objstr = new StringBuilder();
            var objpmenu = new List<MenuParant>();
            var objcmenu = new List<MenuChild>();
            objpmenu = GetParentMenu();

            foreach (MenuParant _pitem in objpmenu)
            {
                objstr.Append("<li><a data-nameen=\"" + _pitem.MenuName + "\" data-id=\"" + _pitem.Id + "\" href='" + _pitem.Url + "'>" + _pitem.MenuName + "</a></li>");

            }
            parentCategory = objstr.ToString();
        }

        public void GetCMenuData()
        {
            var objstr = new StringBuilder();
            //var objcmenu = new List<MenuChild>();
            //List<MenuParant> objpmenu = GetParentMenu();
            //objcmenu = GetChildMenu();
            List<MenuParant> lstMenuParent = GetParentMenu();
            List<MenuChild> lstMenuChild2 = GetChildMenu();
            List<MenuChild> lstMenuChild3 = GetChildMenu3();


            //foreach (MenuParant _pitem in objpmenu)
            //{
            //    objstr.Append("<div style=\"display: none;\" class=\"informatives\" id=\"" + _pitem.Id + "\">");
            //    objstr.Append("<ul style=\"width: 25%;\" class=\"" + _pitem.Id + "-0\">");
            //    var childitem = objcmenu.Where(m => m.PairantId == _pitem.Id).ToList();
            //    if (childitem.Count > 0)
            //    {

            //        foreach (var _citem in childitem)
            //        {
            //            objstr.Append("<li><a data-nameen=\"" + _citem.ChildName + " \" data-parent=\"" + _citem.PairantId + "1\" data-id=\"" + _citem.Id + "\" href=\"" + _citem.ChildUrl + "\">" + _citem.ChildName + " <span class=\"label-new-subcategory\">" + 0 + "</span></a></li>");
            //        }

            //    }
            //    objstr.Append(" </ul>");
            //    objstr.Append("</div>");
            //}
            //category = objstr.ToString();

            foreach (MenuParant objParentMenu in lstMenuParent)
            {
                objstr.Append("<div style=\"display: none;\" class=\"informatives\" id=\"" + objParentMenu.Id + "\">");
                var lstMenu2ByParent = lstMenuChild2.Where(m => m.PairantId == objParentMenu.Id).ToList();


                if (lstMenu2ByParent.Count > 0)
                {
                    if (lstMenu2ByParent.Count == 3)
                    {
                        foreach (var objmenu2 in lstMenu2ByParent)
                        {
                            objstr.Append("<ul class=\"1099011-0\" style=\"width: 33%;\">");
                            objstr.Append("<li class=\"informative-text\"><a href=\"" + objmenu2.ChildUrl + "\">" + objmenu2.ChildName + "</a></li>");
                            var lstMenu3ByMenu2 = lstMenuChild3.Where(p => p.PairantId == objmenu2.Id).ToList();
                            //trường hợp khi danh sách menu cấp 3 không lớn hơn quy định số menu cấp 3 ở 1 cột
                            //ở đây quy định là 1

                            foreach (var objmenu3 in lstMenu3ByMenu2)
                            {
                                objstr.Append("<li ><a style=\"color:red\" href=\"" + objmenu3.ChildUrl + "\">" + objmenu3.ChildName + "</a></li>");
                            }
                            objstr.Append("</ul>");

                        }
                    }
                    else if (lstMenu2ByParent.Count >= 4)
                    {
                        foreach (var objmenu2 in lstMenu2ByParent)
                        {
                            objstr.Append("<ul class=\"1099011-0\" style=\"width: 25%;\">");
                            objstr.Append("<li class=\"informative-text\"><a href=\"" + objmenu2.ChildUrl + "\">" + objmenu2.ChildName + "</a></li>");
                            var lstMenu3ByMenu2 = lstMenuChild3.Where(p => p.PairantId == objmenu2.Id).ToList();
                            //trường hợp khi danh sách menu cấp 3 không lớn hơn quy định số menu cấp 3 ở 1 cột
                            //ở đây quy định là 1

                            foreach (var objmenu3 in lstMenu3ByMenu2)
                            {
                                objstr.Append("<li ><a style=\"color:red\" href=\"" + objmenu3.ChildUrl + "\">" + objmenu3.ChildName + "</a></li>");
                            }
                            objstr.Append("</ul>");

                        }
                    }
                    else if (lstMenu2ByParent.Count <= 2)
                    {
                        foreach (var objmenu2 in lstMenu2ByParent)
                        {
                            objstr.Append("<ul class=\"1099011-0\" style=\"width: 25%;\">");
                            objstr.Append("<li class=\"informative-text\"><a href=\"" + objmenu2.ChildUrl + "\">" + objmenu2.ChildName + "</a></li>");
                            var lstMenu3ByMenu2 = lstMenuChild3.Where(p => p.PairantId == objmenu2.Id).ToList();
                            //trường hợp khi danh sách menu cấp 3 không lớn hơn quy định số menu cấp 3 ở 1 cột
                            //ở đây quy định là 1
                            if (lstMenu3ByMenu2.Count == NumberMenu3PerColumn)
                            {
                                foreach (var objmenu3 in lstMenu3ByMenu2)
                                {
                                    objstr.Append("<li ><a style=\"color:red\" href=\"" + objmenu3.ChildUrl + "\">" + objmenu3.ChildName + "</a></li>");
                                }
                                objstr.Append("</ul>");
                            }
                            else // nếu lớn hơn số menu quy định ở 1 cột thì chia làm 2 cột
                            {
                                int i = 0;
                                string str = "<ul class=\"1099011-1\" style=\"width: 25%;\">";
                                foreach (var objmenu3 in lstMenu3ByMenu2)
                                {
                                    if (i < NumberMenu3PerColumn)
                                    {
                                        objstr.Append("<li><a style=\"color:red\" href=\"" + objmenu3.ChildUrl + "\">" + objmenu3.ChildName + "</a></li>");
                                    }


                                    if (i >= NumberMenu3PerColumn && lstMenu3ByMenu2.Count > NumberMenu3PerColumn)
                                    {
                                        if (i == NumberMenu3PerColumn)
                                        {
                                            str = str + "<li style=\"margin-top: 36px;\"><a href=\"" + objmenu3.ChildUrl + "\">" + objmenu3.ChildName + "</a></li>";
                                        }
                                        else
                                        {
                                            str = str + "<li><a href=\"" + objmenu3.ChildUrl + "\">" + objmenu3.ChildName + "</a></li>";
                                        }
                                    }
                                    i = i + 1;
                                }
                                str = str + "</ul>";
                                objstr.Append("</ul>");
                                objstr.Append(str);
                            }

                        }
                    }
                }
                objstr.Append("</div>");
            }

            category = objstr.ToString();
        }

        public List<MenuParant> GetParentMenu()
        {
            var objmenu = new List<MenuParant>();
            DataTable _objdt = new DataTable();
            string querystring = "select * from Category where [ParentID]=0 and [Menu3] = 0";
            SqlConnection _objcon = new SqlConnection(connectionstring);
            SqlDataAdapter _objda = new SqlDataAdapter(querystring, _objcon);
            _objcon.Open();
            _objda.Fill(_objdt);
            if (_objdt.Rows.Count > 0)
            {
                for (int i = 0; i < _objdt.Rows.Count; i++)
                {
                    objmenu.Add(new MenuParant { Id = _objdt.Rows[i]["CATEGORYID"].ToString(), MenuName = _objdt.Rows[i]["CATEGORYNAME"].ToString(), Url = _objdt.Rows[i]["Url"].ToString() });
                }
            }
            return objmenu;
        }

        public List<MenuChild> GetChildMenu()
        {
            List<MenuChild> objmenu = new List<MenuChild>();
            DataTable _objdt = new DataTable();
            string querystring = "select * from Category where [ParentID] <> 0 and [Menu3] = 0";
            SqlConnection _objcon = new SqlConnection(connectionstring);
            SqlDataAdapter _objda = new SqlDataAdapter(querystring, _objcon);
            _objcon.Open();
            _objda.Fill(_objdt);
            if (_objdt.Rows.Count > 0)
            {
                for (int i = 0; i < _objdt.Rows.Count; i++)
                {
                    objmenu.Add(new MenuChild { Id = _objdt.Rows[i]["CATEGORYID"].ToString(), PairantId = _objdt.Rows[i]["ParentID"].ToString(), ChildName = _objdt.Rows[i]["CATEGORYNAME"].ToString(), ChildUrl = _objdt.Rows[i]["Url"].ToString() });
                }
            }
            return objmenu;
        }

        public List<MenuChild> GetChildMenu3()
        {
            List<MenuChild> objmenu = new List<MenuChild>();
            DataTable _objdt = new DataTable();
            string querystring = "select * from Category where [ParentID] <> 0 and [Menu3] = 1";
            SqlConnection _objcon = new SqlConnection(connectionstring);
            SqlDataAdapter _objda = new SqlDataAdapter(querystring, _objcon);
            _objcon.Open();
            _objda.Fill(_objdt);
            if (_objdt.Rows.Count > 0)
            {
                for (int i = 0; i < _objdt.Rows.Count; i++)
                {
                    objmenu.Add(new MenuChild { Id = _objdt.Rows[i]["CATEGORYID"].ToString(), PairantId = _objdt.Rows[i]["ParentID"].ToString(), ChildName = _objdt.Rows[i]["CATEGORYNAME"].ToString(), ChildUrl = _objdt.Rows[i]["Url"].ToString() });
                }
            }
            return objmenu;
        }
    }
}

public class MenuParant
{
    public string Id { get; set; }
    public string MenuName { get; set; }
    public string Url { get; set; }
}
public class MenuChild
{
    public string Id { get; set; }
    public string PairantId { get; set; }
    public string ChildName { get; set; }
    public string ChildUrl { get; set; }
}

public class FaceBookUser
{
    public string Id { get; set; }
    public string Name { get; set; }
    public string UserName { get; set; }
    public string PictureUrl { get; set; }
    public string Email { get; set; }
    public string Birthday { get; set; }
    public string Gender { get; set; }
    public FaceBookEntity Location { get; set; }
}

public class FaceBookEntity
{
    public string Id { get; set; }
    public string Name { get; set; }
}
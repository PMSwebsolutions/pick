var vm;
$(document).ready(function () {
    vm = new loginViewModel();
    ko.applyBindings(vm);
});

function loginViewModel() {
    var self = this;
    self.username = ko.observable("");
    self.password = ko.observable("");
    self.errorLog = ko.observable("");
    self.submit = function () {
        $.ajax({
            type: "POST",
            url: "loginPage.aspx/loginProcess",
            data: "{'user': '" + self.username() + "', 'password' : '" + self.password() + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d == "failureU") {
                    self.errorLog("Username does not exists.");
                } else if (data.d == "failure") {
                    self.errorLog("Check your username or password.");
                } else {
                    //alert("Success");
                    window.location = "admin/homeAdmin.aspx";
                }
            },
            error: function () {
                alert("Login Error");               
            }
        });
    }
};
/*
[System.Web.Services.WebMethod]
        public static string loginProcess(string user, string password)
{
    using(var cn = new NpgsqlConnection(ConfigurationManager.AppSettings["dbconnection"]))
        {
            cn.Open();
    
    try {
        var query = "select password from login_table where username=@userS;";
        var result = cn.Query<loginDapper>(query, new { userS = user }).Single<loginDapper>();
        var d = result.password;
        if (d.ToString() == password) {
            //Session["username"] = user;
            //HttpResponse.Redirect("~/admin/homeAdmin.aspx",false);
            return "success";
        }
        else {
            return "failure";
        }
    }
    catch
    {
        return "failureU";
    }
}
            //return (user + " " + password);
        }
*/
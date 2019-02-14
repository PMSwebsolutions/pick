var vm;
$(document).ready(function () {
    vm = new contactViewModel();
    ko.applyBindings(vm);
    $("#loader").css("display", "none");
});

function contactViewModel() {
    var self = this;
    self.name = ko.observable("");
    self.email = ko.observable("");
    self.subject = ko.observable("");
    self.message = ko.observable("");
    self.contact = function () {
        $("#contactBtn").css("display", "none");
        $("#loader").css("display", "block");
        $.ajax({
            type: "POST",
            url: "contact.aspx/sendMail",
            data: "{'name': '" + self.name() + "', 'email' : '" + self.email() + "', 'subject' : '" + self.subject() + "', 'message' : '" + self.message() + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                alert("The message was sent successfully");
                self.name('');
                self.email('');
                self.message('');
                self.subject('');
                $("#contactBtn").css("display", "block");
                $("#loader").css("display", "none");

            },
            error: function () {
                alert("The message was not sent. Try again Later.");
                $("#contactBtn").css("display", "block");
                $("#loader").css("display", "none");
            }
        });
    }
}
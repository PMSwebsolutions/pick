using System;
using System.Collections.Generic;
using System.Text;
using Dapper;
using DapperExtensions.Mapper;
namespace sunriseBLL.DAPPER

{
    class loginDapperMapper : ClassMapper<loginDapper>
    {
        public loginDapperMapper()
        {
            base.Table("login_table");
            Map(a => a.username).Column("username");
            Map(a => a.password).Column("password");
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for AccountBll
/// </summary>
public class AccountBll
{
    AccountDal _accountDal = new AccountDal();
    public int TaiKhoan(string UserName, string PassWord)
    {
        return _accountDal.TaiKhoan(UserName, PassWord);
    }

    public int PhanQuyen(string UserName)
    {
        return _accountDal.PhanQuyen(UserName);
    }
}
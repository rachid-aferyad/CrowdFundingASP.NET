﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CrowdFunding.ASP.Controllers
{
    public class UserController : Controller
    {
        //private 
        // GET: User
        public ActionResult Index()
        {
            return View();
        }
    }
}
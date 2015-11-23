﻿//using MvcWebUI.App_Start;
using System;
using System.Collections.Generic;
//using System.ComponentModel.Composition.Hosting;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Routing;
using App.Core;
using Microsoft.Practices.Unity;

namespace ESUI
{
    // 注意: 有关启用 IIS6 或 IIS7 经典模式的说明，
    // 请访问 http://go.microsoft.com/?LinkId=9394801

    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();

            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);

            //设置MEF依赖注入容器
            //DirectoryCatalog catalog = new DirectoryCatalog(AppDomain.CurrentDomain.SetupInformation.PrivateBinPath);
            //MefDependencySolver solver = new MefDependencySolver(catalog);
            //DependencyResolver.SetResolver(solver);
            //注入 Ioc
            var container = new UnityContainer();
            DependencyRegisterType.Container_Sys(ref container);
            DependencyResolver.SetResolver(new UnityDependencyResolver(container));
        }
        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }
    }
}
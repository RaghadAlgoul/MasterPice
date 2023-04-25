using System.Web;
using System.Web.Optimization;

namespace MP_TS_SHOP_
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            //bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
            //            "~/Scripts/jquery-{version}.js"));

            //bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
            //            "~/Scripts/jquery.validate*"));

            //// Use the development version of Modernizr to develop with and learn from. Then, when you're
            //// ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            //bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
            //            "~/Scripts/modernizr-*"));


            //bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
            //          "~/Scripts/bootstrap.js"));

            bundles.Add(new ScriptBundle("~/TS_SHOP/Script").Include(
                       "~/Content/plugins/jquery/jquery.min.js",
                       "~/Content/plugins/jquery-ui/jquery-ui.min.js",
                       "~/Content/plugins/tether/js/tether.min.js",
                       "~/Content/plugins/raty/jquery.raty-fa.js",
                       "~/Content/plugins/bootstrap/dist/js/popper.min.js",
                       "~/Content/plugins/bootstrap/dist/js/bootstrap.min.js",
                       "~/Content/plugins/seiyria-bootstrap-slider/dist/bootstrap-slider.min.js",
                       "~/Content/plugins/slick-carousel/slick/slick.min.js",
                       "~/Content/plugins/jquery-nice-select/js/jquery.nice-select.min.js",
                       "~/Content/plugins/fancybox/jquery.fancybox.pack.js",
                       "~/Content/plugins/smoothscroll/SmoothScroll.min.js",
                       "~/Content/js/scripts.js"


                       ));






            bundles.Add(new StyleBundle("~/TS_SHOP/css").Include(
                    "~/Content/plugins/jquery-ui/jquery-ui.min.css",
                     "~/Content/plugins/bootstrap/dist/css/bootstrap.min.css",
                     "~/Content/plugins/font-awesome/css/font-awesome.min.css",
                     "~/MyCss.css",
                     "~/Content/plugins/slick-carousel/slick/slick.css",
                     "~/Content/plugins/slick-carousel/slick/slick-theme.css",
                     "~/Content/plugins/fancybox/jquery.fancybox.pack.css",

                     "~/Content/plugins/jquery-nice-select/css/nice-select.css",
                     "~/Content/plugins/seiyria-bootstrap-slider/dist/css/bootstrap-slider.min.css",
                     "~/Content/css/style.css"
                     ));

            bundles.Add(new ScriptBundle("~/TS_SHOP/Script").Include(
                        "~/Content/assets/js/jquery-1.11.0.min.js",
                        "~/Content/assets/js/jquery-migrate-1.2.1.min.js",
                        "~/Content/assets/js/bootstrap.bundle.min.js",
                        "~/Content/assets/js/templatemo.js",
                        "~/Content/assets/js/custom.js",
                        "~/Content/assets/js/slick.min.js"


                        ));

            bundles.Add(new StyleBundle("~/PersonProfile/css").Include(
                      "~/Content/PersonalProfile/css/style.css",
                      "~/Content/PersonalProfile/css/style.css"

                     ));


            bundles.Add(new StyleBundle("~/Admin/css").Include(
                     "~/Content/AdminStyle/vendor/fontawesome-free/css/all.min.css",
                     "~/Content/AdminStyle/css/sb-admin-2.min.css"
                     
                    ));
            
        }
    }
}

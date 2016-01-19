using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FlyerCreationApplication.Startup))]
namespace FlyerCreationApplication
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

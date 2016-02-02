using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FlyerV2.Startup))]
namespace FlyerV2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

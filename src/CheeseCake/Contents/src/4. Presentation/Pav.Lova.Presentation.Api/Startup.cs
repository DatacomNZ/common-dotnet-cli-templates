using Datacom.CommonCore.Diagnostics;
using Datacom.CommonCore.Diagnostics.Extensions;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Pav.Lova.Presentation.Api.Diagnostics;
using Swashbuckle.AspNetCore.Swagger;
using System.Collections.Generic;

namespace Pav.Lova.Presentation.Api
{
    public class Startup
    {
        private readonly ILogger<Startup> _logger;
        public Startup(IConfiguration configuration, ILogger<Startup> logger)
        {
            Configuration = configuration;
            _logger = logger;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_2_1)
                .AddDiagnosticControllers();

            services.AddTransient<List<ICheckAvailability>>(x =>
            {
                return new List<ICheckAvailability>()
                {
                    new DefaultHealthChecker()
                };
            });

            services.AddSwaggerGen(c =>
            {
                //todo: Update Swagger Description
                c.SwaggerDoc("v1", new Info { 
                    Title = "Pav.Lova API", 
                    Version = "v1",
                    Description = ""
                });
            });

            //todo: Add Authentication (cookie/token etc.)
            //https://docs.microsoft.com/en-us/aspnet/core/migration/1x-to-2x/identity-2x?view=aspnetcore-2.2
            //services.AddAuthentication()

            _logger.LogInformation("Services configured.");
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseHsts();
                app.UseHttpsRedirection();
            }
            
            // Enable middleware to serve generated Swagger as a JSON endpoint.
            app.UseSwagger();

            //todo: Add Authentication (cookie/token etc.)
            //app.UseAuthentication();

            // Enable middleware to serve swagger-ui (HTML, JS, CSS, etc.), 
            // specifying the Swagger JSON endpoint.
            app.UseSwaggerUI(c =>
            {
                c.SwaggerEndpoint("/swagger/v1/swagger.json", "Pav.Lova API V1");
                c.RoutePrefix = string.Empty;
            });

            app.UseMvc();
            _logger.LogInformation("Startup configured");
        }
    }
}

using Datacom.CommonCore.Diagnostics;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Pav.Lova.Presentation.Api.Diagnostics
{
    public class DefaultHealthChecker : ICheckAvailability
    {
        public Task<bool> CheckAccessAsync()
        {
            return Task.FromResult(true);
        }

        public Task<bool> CheckAccessExtensivelyAsync()
        {
            return Task.FromResult(true);
        }

        public Task<List<string>> GetErrorsAsync()
        {
            throw new System.NotImplementedException();
        }

        public string GetLabel()
        {
            throw new System.NotImplementedException();
        }

        public Task<List<string>> GetWarningsAsync()
        {
            throw new System.NotImplementedException();
        }
    }
}

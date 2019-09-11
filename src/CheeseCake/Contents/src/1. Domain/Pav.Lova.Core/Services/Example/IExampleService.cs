using Pav.Lova.Core.Services.Example.Models;

namespace Pav.Lova.Core.Services.Example
{
    public interface IExampleService
    {
        ExampleResult GetExampleByFilter(ExampleFilter filter);
    }
}

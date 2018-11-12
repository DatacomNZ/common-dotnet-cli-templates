using onion.Core.Example.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace onion.Core.Example
{
    public interface IExampleProvider
    {
        ExampleResult GetExampleByFilter(ExampleFilter filter);
    }
}

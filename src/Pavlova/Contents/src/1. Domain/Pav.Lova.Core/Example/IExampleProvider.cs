using Pav.Lova.Core.Example.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace Pav.Lova.Core.Example
{
    public interface IExampleProvider
    {
        ExampleResult GetExampleByFilter(ExampleFilter filter);
    }
}

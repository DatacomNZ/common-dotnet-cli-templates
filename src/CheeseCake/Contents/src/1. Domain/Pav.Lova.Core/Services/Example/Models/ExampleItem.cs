using Pav.Lova.Core.Services.Example.Types;
using System;

namespace Pav.Lova.Core.Services.Example.Models
{
    public class ExampleItem
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public ExampleType EampleType { get; set; }
    }
}

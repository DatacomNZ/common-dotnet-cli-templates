using onion.Core.Example.Types;
using System;
using System.Collections.Generic;
using System.Text;

namespace onion.Core.Example.Models
{
    public class ExampleItem
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public ExampleType EampleType { get; set; }
    }
}

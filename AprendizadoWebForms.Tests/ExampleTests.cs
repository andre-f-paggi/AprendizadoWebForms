using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace AprendizadoWebForms.Tests
{
    public class ExampleTests
    {
        [Fact(DisplayName = "The truth")]
        [Trait("Category", "Example")]
        public static void The_Truth()
        {
            Assert.True(1 == 1);
        }
    }
}

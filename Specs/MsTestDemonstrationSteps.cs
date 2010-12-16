using Should.Fluent;
using TechTalk.SpecFlow;

namespace Specs
{
    [Binding]
    public class MsTestDemonstrationSteps
    {
        private int _sum = 0;

        [Given(@"I have entered (\d+) into the calculator")]
        public void EnteredNumber(int number)
        {
            _sum += number;
        }

        [Given(@"Step that isn't called at all")]
        public void StepDefinitionThatIsntCalled(){}

        [When(@"I press add")]
        public void WhenIPressAdd()
        {
            
        }

        [Then(@"the result should be (\d+) on the screen")]
        public void ThenTheResultShouldBe7OnTheScreen(int result)
        {
            _sum.Should().Equal(result);
        }



    }
}

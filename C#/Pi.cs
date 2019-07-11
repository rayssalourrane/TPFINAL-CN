using System;

public class Euler : SeriesAlgorithmBase
{
    //pi^2 / 6 = 1 + 1/4 + 1/9 + ..... + 1/k^2

    public Euler(int numberOfDecimalPlaces) : base(numberOfDecimalPlaces) { }
    public override decimal Calculate()
    {
        decimal result = 0;
        Iteration = 1;
        while (KeepGoing)
        {
            long squared = Iteration * Iteration;
            result = result + (decimal)1 / squared;
            CurrentPi = (decimal)Math.Sqrt((double)(result * 6));
            if (PiCalculatedToRequiredPrecision())
            {
                break;
            }
            Iteration++;
        }
        return CurrentPi;

    }
}

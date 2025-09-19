/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package GA;

/**
 *
 * @author Diwakar
 */
public class GA {

    public void Analysis_DNA(String DNAs) {

        // Set a candidate solution
        FitnessCalc.setSolntn(DNAs);

        // Create an initial population
        Population myPop = new Population(50, true);

        // Evolve our population until we reach an optimum solution
        int generationCount = 0;
        while (myPop.getFittest().getFitness() < FitnessCalc.getMaxFitness()) {
            if (generationCount == 0) {
                generationCount++;
                System.out.println("Generation: " + generationCount + " Fittest: " + myPop.getFittest().getFitness());
                myPop = Algorithm.evolvePopulation(myPop);
            }
            break;
        }
        System.out.println("Solution found!");
        System.out.println("Generation: " + generationCount);
        System.out.println("Genes:");
        System.out.println(myPop.getFittest());

    }
}

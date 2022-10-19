# Tussock
This is a project related to BIOL694 midterm

## Research

The Arctic has been warming nearly four times as fast as the rest of the world. My study focuses on how this rapid warming affects environments and ecology and how the changes affect carbon balance.

## Input files

-Data (.csv files) contain Net primary productivity and environmental data from Eddy covariance flux tower in Imnavait, near Toolik Field Station, Alaska, USA.

-Data can be downloaded from AON website (http://aon.iab.uaf.edu/, except for the 2022 file: contact kokano@alaska.edu). 
 
## Code

**1. Purpose**

    The code is for combinging multiple files into one with an appropriate header without unnecessary cells (-9999).

**2. Usage**

    The code was made to run in a supercomputer "Chinook" in University of Alaska Fairbanks. It requires .slurm file.
    First, the code was produced using a terminal, then it was modified for the Chinook job scheduler (slurm) can be read.

**3. Content**

    -Tuss.slurm: Containing #SBATCH submission information, followed by the script.
    

## Contributor

**Kyoko Okano**  
Ph.D student at Department of Biology and Wildlife and at Institute of Arctic Biology, University of Alaska, Fairbanks  








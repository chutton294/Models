HymodR: An R version of the Hymod Rainfall-Runoff Model 

Hymod Rainfall-Runoff Model, based on the Probability-Distributed Model concept (Moore 2007). Runs on a daily timestep and returns outlet discharge. 

The model is mostly written in C (with structs instead of classes, for example), but uses a few C++ features for I/O. 

Rcpp is then used to implement and run the code from R.

All input and output, parameter sampling and calibration can then be implemented using existing R functions (e.g DEoptim)

Contents:

hymodR.h: Defines the global hymod structure to store all states and fluxes at each timestep over the course of the evaluation.
hymodMainR.cpp: Defines the functions for the processes in the model, and the Rcpp function called from R in order to run the model
workflow_hymodR.R: example implementation of the code from R, using exampleData.txt as input

using Rccp in R requires installation of Rtools. see: https://github.com/stan-dev/rstan/wiki/Install-Rtools-for-Windows

Copyright (C) 2015 Christopher Hutton.
Copyright (C) 2010-2013 Jon Herman, Josh Kollat, and others.

HymodR is free software: you can redistribute it and/or modify it under the terms of the GNU Lesser General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

HymodR is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License along with HymodR. If not, see http://www.gnu.org/licenses/.

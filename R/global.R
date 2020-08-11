options(scipen = 99)
library(shiny)
library(plotly)
library(data.table)

distributions <- list(
  beta = rbeta,
  binomial = rbinom,
  cauchy = rcauchy,
  chi_squared = rchisq,
  exponential = rexp,
  f = rf,
  gamma = rgamma,
  geometric = rgeom,
  hypergeometric = rhyper,
  log_normal = rlnorm,
  multinomial = rmultinom,
  negative_binomial = rnbinom,
  normal = rnorm,
  poisson = rpois,
  students_t =  rt,
  uniform = runif,
  weibull = rweibull
)

arguments <- list(
  beta = list(
    n = 1,
    shape1 = 1,
    shape2 = 1,
    ncp = 0
  ),
  binomial = list(
    n = 1,
    size = 1,
    prob = 0.5
  ),
  cauchy = list(
    n = 1,
    location = 0,
    scale = 1
  ),
  chi_squared = list(
    n = 1,
    df = 1,
    ncp = 0
  ),
  exponential = list(
    x = 1,
    rate = 1
  ),
  f = list(
    n = 1,
    df1 = 1,
    df2 = 1,
    ncp = 1
  ),
  gamma = list(
    n = 1,
    shape = 1,
    rate = 1
  ),
  geometric = list(
    n = 1,
    prob = 0.5
  ),
  hypergeometric = list(
    nn = 1,
    m = 1,
    n = 1,
    k = 1
  ),
  log_normal = list(
    n = 1,
    meanlog = 0,
    sdlog = 1
  ),
  negative_binomial = list(
    n = 1,
    size = 1,
    prob = 0.5
  ),
  normal = list(
    n = 1,
    mean = 0,
    sd = 1
  ),
  poisson = list(
    n = 1,
    lambda = 1
  ),
  students_t =  list(
    n = 1,
    df = 1,
    ncp = 1
  ),
  uniform = list(
    n = 1,
    min = 0,
    max = 1
  ),
  weibull = list(
    n = 1,
    shape = 1,
    scale = 1
  )
)

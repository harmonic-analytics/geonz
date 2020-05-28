
<!-- README.md is generated from README.Rmd. Please edit that file -->

# geonz <img src = 'inst/figures/hex-geonz.png' align='right' height='139' />

<!-- badges: start -->

<!-- badges: end -->

This package provides datasets of the annually released geographic area
boundaries of New Zealand. The datasets are stored as simple features
data tables.

Currently, the geonz package houses datasets for the boundaries for five
geographic area types as set at 1 January 2018: statistical area 1,
statistical area 2, ward, territorial authority and regional council.
The package also contains versions of these boundaries clipped to the
coastline that can be used for map creation/cartographic purposes.

## Installation

To install this package from gitlab, you must first generate a Personal
Access Token; the package can then be installed using the `remotes`
package:

``` r
remotes::install_gitlab(repo = 'harmonic/packages/geonz', auth_token = <PAT>, host = 'gitlab.harmonic.co.nz/')
```

Alternatively the `utilic` package can be used:

``` r
utilic::install_harmonic('harmonic/packages/geonz')
```

<figure>
  <p align="center">
  <img
  src="https://richie-docs.readthedocs.io/en/latest/_images/richie.png"
  width="750px"
  </p>
</figure>

# <span style="font-variant:small-caps;">Richie</span>

## Quick links
- Documentation: https://richie-docs.readthedocs.io/en/latest/
- Tutorials: https://richie-docs.readthedocs.io/en/latest/general/tutorial.html

## About this project
<span style="font-variant:small-caps;">**Richie**</span> is an open-source **System-Level Design (SLD) framework**, which is meant to facilitate the _assembling_ and _specialization_ of accelerator-rich Heterogeneous Systems-on-Chip (HeSoCs).
The project consists of the following key components:
- <span style="font-variant:small-caps;">**Platform**</span>—Modular and composable accelerator-rich architecture, based on the RISC-V Instruction Set Architecture (ISA).
- <span style="font-variant:small-caps;">**Toolchain**</span>—Automatic design and specialization accelerator-rich, multi-cluster platforms.
- <span style="font-variant:small-caps;">**Exploration flow**</span>—Weigh design trade-offs, identifying the best candidate at meeting your application needs. <span style="font-variant:small-caps;">Richie</span> leverages FPGAs to emulate full-stack applications and navigate the HeSoC design space, enabling deeper introspection into the non-idealities occurring at system-level.

<a href="https://pulp-platform.org">
<img src="img/pulp_logo_icon.svg" alt="Logo" width="100" align="right">
</a>

<span style="font-variant:small-caps;">Richie</span> is a joint development effort leaded by the University of Modena and Reggio Emilia (UNIMORE) and the [PULP (Parallel Ultra-Low Power) Platform group](https://pulp-platform.org/index.html), from ETH Zürich and the University of Bologna.

## About this repository
This repository includes various components, which are organized as follows.

This repository contains hardware, software and utilities written as part of the OpenTitan project.
It is structured as monolithic repository, or "monorepo", where all components live in one repository.
It exists to enable collaboration across partners participating in the OpenTitan project.

structured the key components of <span style="font-variant:small-caps;">Richie</span>, including:

- `hw`—_Hardware subsystem_, including the platform and accelerators designs. A FPGA build flow and a RTL simulation setup are also included.
- `sw`—_Software subsystem_, including benchmarks and board boot scripts.
- `sld`—_SLD toolchains_, automating the hardware-software co-design and optimization phases.
- `third-party`—_Third-party components_.
- `env`—_Environment scripts_.

## Documentation
The project includes comprehensive documentation that can be accessed [online at Read the Docs](https://richie-docs.readthedocs.io/en/latest/).

## How to contribute
We are always enthusiastic about potential collaborations and contributions to our work!
Have a look at our [contribution guide](https://richie-docs.readthedocs.io/en/latest/general/contributing.html) in order to learn how to contribute code to this repository.

## Publications
If you want to use <span style="font-variant:small-caps;">Richie</span> in your research, please cite our work that you can find [listed here](https://richie-docs.readthedocs.io/en/latest/general/publications.html).

## License
[Have a look at our guidelines for licensing](https://richie-docs.readthedocs.io/en/latest/general/license.html), or take a look at the full text:
- see [LICENSE-SHL](LICENSE-SHL) for the Solderpad Hardware License, Version 0.51;
- see [LICENSE-APACHE](LICENSE-APACHE) for the Apache License, Version 2.0.

## Contacts
Do not hesitate to reach us in case of questions using [our contact page](https://richie-docs.readthedocs.io/en/latest/general/team.html).
<!-- Title Page -->

# PowerSTIG

STIG as a DevOps tool

---
<!-- Page 1 -->

## The challenge

* The STIG rules are in plain english inaccessible to automation
  * Admin can read and manually configure a computer
  * A GPO requires a host to be domain joined
* Current tools are disconnected
  * Audit rules, but doesn't configure them
  * Configure rules, but doesn't audit them
  * Generally used in a silo with little input from IA \ cyber \ system owner
* They are all external to the computers themselves
* What if we could give a host a document to read auto-configure \ audit

---
<!-- Page 2 -->

## What is PowerSTIG

* A collection of PowerShell modules dedicated to STIG automation
* PowerStig – The base module contains the following items:
  * Composite DSC resources for each STIG (Windows Server, IIS, etc.)
  * PowerShell classes to support STIG compliance business logic
  * Serialized STIG rules extracted from the xccdf
* PowerStig.Convert – Extracts rule objects from xccdf
* PowerStig.Checklist * – Creates STIG ckl files prepopulated with DSC results.
  * Ex. 85% of Windows Server checklist is auto completed by PowerSTIG in real time.

---
<!-- Page 3 -->

## What is PowerSTIG contd

* Manages the PowerShell module dependencies in the manifest
  * Install-Module -Name PowerSTIG will auto install all the dependent modules
* Provides access the STIG data in a standard way
* Implements the concept of organizational settings
  * Enables rule values that allow a range of values to be defined for the enterprise
  * Settings are validated to ensure they comply with allowed range
* Implements the concept of exceptions to a rule
  * Override a rule with a value required by host application
  * Tags the rule as an exception to policy to auto-detect and report exceptions

---
<!-- Page 4 -->

## What is PowerSTIG contd 2

* Implements the concept of Skipped Rule
  * Not all rules are applicable, so they are tracked but not applied
* Reduces 100’s of rule checks to a few lines of PowerShell
  * This reduces technical debt a STIG creates
* Provides all the benefits of PowerShell DSC
  * Apply and Monitor or Auto-Correct if a setting is manually changed
  * Conflict detection (If you try to set a STIG value outside of PowerSTIG)
* Aligned to each STIG to ease readability in the configuration

---
<!-- Page 5 -->

## PowerSTIG \ DSC Data

* Once you have the data from DSC, you can report and visualize it anyway you want:
  * Excel
  * Power BI
  * SQL Server
  * Data warehouse
  * DSC-EA

---
<!-- Page 6 -->

## [PowerSTIG \ DSC benefits](https://docs.microsoft.com/en-us/powershell/dsc/overview/decisionmaker)

* Configurations are designed to be easily read, stored, and updated.
* Configurations declare the state target devices should be in.
* Repeated deployments are much less error-prone.
  * Making deployments faster and more reliable
  * Deploy your configuration in a Test\Dev lab to validate planned changes
* Configurations are shareable
  * Common scenarios and best practices for the work that needs to be done.
* DSC has monitoring and reporting built in.

---
<!-- Page 7 -->
<!-- Optional -->

## DevOps

* Developers and Operations
  * Merging the TTP's from both disciplines
* People, Process, Technology
  * Everyone needs to be involved (IA, Cyber, Engineering, Operations, etc.)
  * Everyone needs to provide input and receive output
* It's not about the technology, but it’s about the technology
  * Every tool MUST talk to every other tool
  * Manual tasks MUST be defined and implemented through automation

---
<!-- Page 8 -->
<!-- Optional -->

## PowerShell DevOps Tooling 1

* Editors must integrate into change workflow
* PowerShell ISE
  * Windows Only \ Closed source
  * No longer being developed
* Visual Studio Code
  * Cross platform \ Open source
  * Integrates with Git, PowerShell, PSScriptAnalyzer
  * Provides a task engine to execute workflow and automatic formatting

---
<!-- Page 9 -->
<!-- Optional -->

## PowerShell DevOps Tooling 2

* Version Control (VC)
  * Git is it
  * Enables peer review
  * Manages your copies of copies of files
  * Removes direct access to production code
  * Manages the merging of changes

<!-- Page 10 -->
<!-- Optional -->

## PowerShell DevOps Tooling 3

* Testing
  * Technical Debt - the eventual consequences of any system design
  * Testing - Eliminates Technical debt
  * Tests should add value not overhead
  * **Pester** is the PowerShell Test framework
    * Unit testing tests code in isolation
    * Integration testing tests everything when it is put together.

<!-- Page 11 -->
<!-- Optional -->

## PowerShell DevOps Tooling 4

* Releasing to Production
* The code system is the only thing that should have R/W access to production
* Your release process should automatically run all of your tests
* You should have a Master code branch that is highly restricted
* You should have multiple branches that merge into Master for release

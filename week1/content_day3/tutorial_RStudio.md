## Day 2 - Thursday January 4th 

### RStudio (and R) Tutorial

#### What is R?

R is a freely available language and environment for statistical computing and graphics which provides a wide variety of statistical and graphical techniques: linear and nonlinear modelling, statistical tests, time series analysis, classification, clustering, etc.

#### Download R from CRAN

CRAN is a network of ftp and web servers around the world that store identical, up-to-date, versions of code and documentation for R. It is suggested to use the CRAN mirror nearest to you to minimize network load.

1. View the list of mirrors by navigating to [https://cran.r-project.org/mirrors.html](https://cran.r-project.org/mirrors.html)

2. Once you select the mirror nearest to you, you should be presented with a page (see below) that has links to download R for your specific operating system (OS). 

<img width="710" alt="Links to download R" src="https://user-images.githubusercontent.com/54687845/210781131-83ea51a4-7dcf-4ffb-9b32-2ca78a4df3e6.png">

3. Choose the appropriate link for your OS and follow the provided instructions to download the R for your operating system.
    NOTE: If you are a Mac user, you have to download the specific installation package based on your build (intel or apple chip) and level of MacOS update. You can check these two details by navigating to the apple icon in the top left corner and selecting "About This Mac".

#### What is RStudio?

The RStudio integrated development environment (IDE) is a set of tools built to help you be more productive with R. It includes a console, syntax-highlighting editor that supports direct code execution. It also features tools for plotting, viewing history, debugging and managing your workspace.

#### Download RStudio Desktop

1. Navigate to [https://posit.co/download/rstudio-desktop/](https://posit.co/download/rstudio-desktop/).

2. On this page, you can skip step 1 as we have already completed installing R. Under step 2, the appropriate version of RStudio Desktop for your machine should be listed (if not, choose the appropriate installer for your operating system from the list below). Follow the provided instructions to install RStudio.

#### Utilizing RStudio

1. Navigate to where the RStudio application is saved on your machine. Once you open RStudio, you should be able to see four windows in a grid. 

##### Console
You can utilize the version of R that you downloaded by using the "Console". Here you can run a single line of code and have the result be returned. 

<img width="779" alt="R Console screenshot" src="https://user-images.githubusercontent.com/54687845/210785387-67a92c98-384d-4a6b-a001-efcf1d5e6933.png">

##### Text Editor

In the text editor window, you can edit and save R files. R scripts are how you can save lines of code in a file to run in the future. R scripts have the naming syntax 'filename.R' when saved. Practice creating and saving R scripts onto your local machine by utilizing the icons at the top left.

<img width="697" alt="RStudio text editor" src="https://user-images.githubusercontent.com/54687845/211020215-83fff257-c0ea-4fe6-9b84-ae59284cc123.png">


##### Environment

As you create variables and dataframes, a list of all items saved in your environment during the R session will be generated and displayed in this window.

<img width="392" alt="Environment" src="https://user-images.githubusercontent.com/54687845/211018011-6ba25caa-171a-4779-92f7-6964062a65f2.png">

##### Plots and Help

In this window, you will be able to view plots as you create them. This window can also display documentation for variables when you utilize the help feature.

<img width="392" alt="Help Documentation Example" src="https://user-images.githubusercontent.com/54687845/211020765-9010d633-39d3-43c1-a429-8bf7395e77c7.png">


2. Edit a R script to have a comment. Comments are created by beginning a line with `#`.
3. Save your R script as `YourName_day2.R` in your cloned course repository i.e. `intersession_data_2024/code/`.

4. Use the terminal to navigate to your cloned repository. `cd intersession_data_2024/code/`
5. Use `git pull` to pull the most update version of the repo to your local machine.
6. Add your new file using `git add YourName_day2.R`.
7. Commit new change using `git commit -m "your message".
8. Check that the commit is good to be pushed by using `git status`.
9. Push new commit using `git push`.
10. Use a web browser to navigate to your forked repository on GitHub. Refresh the page to your new commit.
11. Submit a pull request by selecting "Contribute" and "Create Pull Request"

12. In the wait time as all students generate pull requests, please try out the interactive primer found at [https://posit.cloud/learn/primers/1.2](https://posit.cloud/learn/primers/1.2) to become familiarized with R programming syntax.


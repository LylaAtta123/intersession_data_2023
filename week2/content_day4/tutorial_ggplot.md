## Day 4 - Wednesday January 11th

### ggplot Tutorial

By the end of this lesson students should be able to:
- Produce a data visualization if given specified geometric primitives and visual channels using the R package ggplot2
- Navigate an R markdown file 

#### Open ggplot_practice.Rmd

1. Use the terminal to navigate to your cloned repository. `cd intersession_data_2023`
2. Use `git pull` to pull the most update version of the repo to your local machine.
3. Navigate to the folder where today's practice code is located by `cd week2/code_day4`
4. Display conents using `ls` to check for `ggplot_practice.Rmd`
5. Open RStudio. Can click on icon under applications or use `open -a rstudio` for Macs and `start rstudio` for Windows
6. Once in RStudio, open `ggplot_practice.Rmd`

#### Edit and save Rmarkdown file
7. In the first text chunk, change the name of the author to your own.
8. Save changes as `YourName_ggplot_practice.Rmd` in `intersession_data_2023/week2/code_day4`
9. Follow the instructions in the Rmd file to run the example code chunks, writenew code, and generate visualizations.
10. Once you have completed the questions, save the file again.

#### Knit Rmarkdown file into a html document
11. Click on the `Knit` button to generate a html document with the code and visualizations embedded. (Agree to install markdown and Rmarkdown if prompted)
12. In the terminal, check the contents of `code_day4` using `ls` to see `YourName_ggplot_practice.html`

#### Push changes to forked repo and create pull request
13. Add your new files to stage changes using `git add YourName_ggplot_practice.Rmd YourName_ggplot_practice.html`.
14. Check that files are correctly staged using `git status`.
15. Commit new changes using `git commit -m "your message".
16. Check that the commit is good to be pushed by using `git status`.
17. Push new commit using `git push`.
18. Use a web browser to navigate to your forked repository on GitHub. Refresh the page to see your new commit.
19. GitHub does not render html for preview, but you can just prepend this fragment to the URL of any HTML file: https://htmlpreview.github.io/? to see a preview in your web browser if desired.
20. Submit a pull request to have the main repo pull your changes from your forked repo by selecting "Contribute" and "Create Pull Request"

#### Learn More
21. In the wait time as all students generate pull requests, please try out the interactive primer found at [https://posit.cloud/learn/primers/1.1](https://posit.cloud/learn/primers/1.1) or [https://posit.cloud/learn/primers/3](https://posit.cloud/learn/primers/3) to become more familiarized with ggplot

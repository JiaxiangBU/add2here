add2here <- function(html_path = "output/git-github-gitlab-learning-notes.html",
                     path_to_root = "..") {
    html_content <- readr::read_lines(html_path)
    local_project_path <- usethis::proj_path()
    # usethis::proj_path() 不会报错
    html_content %>%
        stringr::str_replace_all(local_project_path, path_to_root) %>%
        readr::write_lines(html_path)
}

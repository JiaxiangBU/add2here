add2here <- function(html_path = "output/git-github-gitlab-learning-notes.html",
                     path_to_root = "..") {
    html_content <- readr::read_lines(html_path)
    local_project_path <- rstudioapi::getActiveProject()
    html_content %>%
        stringr::str_replace_all(local_project_path, path_to_root) %>%
        readr::write_lines(html_path)
}
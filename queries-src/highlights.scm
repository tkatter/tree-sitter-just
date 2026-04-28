; This file specifies how matched syntax patterns should be highlighted

[
  "export"
  "import"
] @keyword.control.import

"mod" @keyword.module

[
  "alias"
  "set"
  "shell"
] @keyword

[                                                                              ; SKIP-NVIM
  "if"                                                                         ; SKIP-NVIM
  "else"                                                                       ; SKIP-NVIM
] @keyword.control.conditional                                                 ; SKIP-NVIM

([                                                                             ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "if"                                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "else"                                                                       ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
] @keyword.control.conditional                                                 ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
 (#set! priority 105))                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED

; Variables

(value                                                                         ; SKIP-NVIM
  (identifier) @variable)                                                      ; SKIP-NVIM

(value                                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  (identifier) @variable                                                       ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  (#set! priority 105))                                                        ; SKIP-HELIX SKIP-LAPCE SKIP-ZED

(value                                                                         ; SKIP-NVIM
  (identifier) @constant.builtin                                               ; SKIP-NVIM
  (#any-of? @constant.builtin                                                  ; SKIP-NVIM
    "HEX"                                                                      ; SKIP-NVIM
    "HEXLOWER"                                                                 ; SKIP-NVIM
    "HEXUPPER"                                                                 ; SKIP-NVIM
    "PATH_SEP"                                                                 ; SKIP-NVIM
    "PATH_VAR_SEP"                                                             ; SKIP-NVIM
    "CLEAR"                                                                    ; SKIP-NVIM
    "NORMAL"                                                                   ; SKIP-NVIM
    "BOLD"                                                                     ; SKIP-NVIM
    "ITALIC"                                                                   ; SKIP-NVIM
    "UNDERLINE"                                                                ; SKIP-NVIM
    "INVERT"                                                                   ; SKIP-NVIM
    "HIDE"                                                                     ; SKIP-NVIM
    "STRIKETHROUGH"                                                            ; SKIP-NVIM
    "BLACK"                                                                    ; SKIP-NVIM
    "RED"                                                                      ; SKIP-NVIM
    "GREEN"                                                                    ; SKIP-NVIM
    "YELLOW"                                                                   ; SKIP-NVIM
    "BLUE"                                                                     ; SKIP-NVIM
    "MAGENTA"                                                                  ; SKIP-NVIM
    "CYAN"                                                                     ; SKIP-NVIM
    "WHITE"                                                                    ; SKIP-NVIM
    "BG_BLACK"                                                                 ; SKIP-NVIM
    "BG_RED"                                                                   ; SKIP-NVIM
    "BG_GREEN"                                                                 ; SKIP-NVIM
    "BG_YELLOW"                                                                ; SKIP-NVIM
    "BG_BLUE"                                                                  ; SKIP-NVIM
    "BG_MAGENTA"                                                               ; SKIP-NVIM
    "BG_CYAN"                                                                  ; SKIP-NVIM
    "BG_WHITE"))                                                               ; SKIP-NVIM

(value                                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  (identifier) @constant                                                       ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  (#any-of? @constant                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "HEX"                                                                      ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "HEXLOWER"                                                                 ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "HEXUPPER"                                                                 ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "PATH_SEP"                                                                 ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "PATH_VAR_SEP"                                                             ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "CLEAR"                                                                    ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "NORMAL"                                                                   ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "BOLD"                                                                     ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "ITALIC"                                                                   ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "UNDERLINE"                                                                ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "INVERT"                                                                   ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "HIDE"                                                                     ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "STRIKETHROUGH"                                                            ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "BLACK"                                                                    ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "RED"                                                                      ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "GREEN"                                                                    ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "YELLOW"                                                                   ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "BLUE"                                                                     ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "MAGENTA"                                                                  ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "CYAN"                                                                     ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "WHITE"                                                                    ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "BG_BLACK"                                                                 ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "BG_RED"                                                                   ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "BG_GREEN"                                                                 ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "BG_YELLOW"                                                                ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "BG_BLUE"                                                                  ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "BG_MAGENTA"                                                               ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "BG_CYAN"                                                                  ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "BG_WHITE")                                                                ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  (#set! priority 110))                                                        ; SKIP-HELIX SKIP-LAPCE SKIP-ZED

(alias
  left: (identifier) @variable)

(assignment
  left: (identifier) @variable)

; Functions

(recipe_header
  name: (identifier) @function)

(dependency
  name: (target) @function.call)

(dependency_expression
  name: (target) @function.call)

(assert) @function.call @function.builtin

(function
  name: (identifier) @function
  parameters: (function_parameters
    (identifier) @variable.parameter))

(function_call                                                                 ; SKIP-NVIM
  name: (identifier) @function.call)                                           ; SKIP-NVIM

(function_call                                                                 ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  name: (identifier) @function.call                                            ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  (#set! priority 105))                                                        ; SKIP-HELIX SKIP-LAPCE SKIP-ZED

(function_call                                                                 ; SKIP-NVIM
  name: (identifier) @function.builtin                                         ; SKIP-NVIM
  (#any-of? @function.builtin                                                  ; SKIP-NVIM
    "arch"                                                                     ; SKIP-NVIM
    "num_cpus"                                                                 ; SKIP-NVIM
    "os"                                                                       ; SKIP-NVIM
    "os_family"                                                                ; SKIP-NVIM
    "shell"                                                                    ; SKIP-NVIM
    "env"                                                                      ; SKIP-NVIM
    "env_var"                                                                  ; SKIP-NVIM
    "env_var_or_default"                                                       ; SKIP-NVIM
    "require"                                                                  ; SKIP-NVIM
    "which"                                                                    ; SKIP-NVIM
    "is_dependency"                                                            ; SKIP-NVIM
    "invocation_directory"                                                     ; SKIP-NVIM
    "invocation_dir"                                                           ; SKIP-NVIM
    "invocation_directory_native"                                              ; SKIP-NVIM
    "justfile"                                                                 ; SKIP-NVIM
    "justfile_directory"                                                       ; SKIP-NVIM
    "justfile_dir"                                                             ; SKIP-NVIM
    "source_file"                                                              ; SKIP-NVIM
    "source_directory"                                                         ; SKIP-NVIM
    "source_dir"                                                               ; SKIP-NVIM
    "module_file"                                                              ; SKIP-NVIM
    "module_directory"                                                         ; SKIP-NVIM
    "module_dir"                                                               ; SKIP-NVIM
    "just_executable"                                                          ; SKIP-NVIM
    "just_pid"                                                                 ; SKIP-NVIM
    "append"                                                                   ; SKIP-NVIM
    "prepend"                                                                  ; SKIP-NVIM
    "encode_uri_components"                                                    ; SKIP-NVIM
    "quote"                                                                    ; SKIP-NVIM
    "replace"                                                                  ; SKIP-NVIM
    "replace_regex"                                                            ; SKIP-NVIM
    "trim"                                                                     ; SKIP-NVIM
    "trim_end"                                                                 ; SKIP-NVIM
    "trim_end_match"                                                           ; SKIP-NVIM
    "trim_end_matches"                                                         ; SKIP-NVIM
    "trim_start"                                                               ; SKIP-NVIM
    "trim_start_match"                                                         ; SKIP-NVIM
    "trim_start_matches"                                                       ; SKIP-NVIM
    "capitalize"                                                               ; SKIP-NVIM
    "kebabcase"                                                                ; SKIP-NVIM
    "lowercamelcase"                                                           ; SKIP-NVIM
    "lowercase"                                                                ; SKIP-NVIM
    "shoutykebabcase"                                                          ; SKIP-NVIM
    "shoutysnakecase"                                                          ; SKIP-NVIM
    "snakecase"                                                                ; SKIP-NVIM
    "titlecase"                                                                ; SKIP-NVIM
    "uppercamelcase"                                                           ; SKIP-NVIM
    "uppercase"                                                                ; SKIP-NVIM
    "absolute_path"                                                            ; SKIP-NVIM
    "canonicalize"                                                             ; SKIP-NVIM
    "extension"                                                                ; SKIP-NVIM
    "file_name"                                                                ; SKIP-NVIM
    "file_stem"                                                                ; SKIP-NVIM
    "parent_directory"                                                         ; SKIP-NVIM
    "parent_dir"                                                               ; SKIP-NVIM
    "without_extension"                                                        ; SKIP-NVIM
    "clean"                                                                    ; SKIP-NVIM
    "join"                                                                     ; SKIP-NVIM
    "path_exists"                                                              ; SKIP-NVIM
    "read"                                                                     ; SKIP-NVIM
    "error"                                                                    ; SKIP-NVIM
    "blake3"                                                                   ; SKIP-NVIM
    "blake3_file"                                                              ; SKIP-NVIM
    "sha256"                                                                   ; SKIP-NVIM
    "sha256_file"                                                              ; SKIP-NVIM
    "uuid"                                                                     ; SKIP-NVIM
    "choose"                                                                   ; SKIP-NVIM
    "datetime"                                                                 ; SKIP-NVIM
    "datetime_utc"                                                             ; SKIP-NVIM
    "semver_matches"                                                           ; SKIP-NVIM
    "style"                                                                    ; SKIP-NVIM
    "cache_directory"                                                          ; SKIP-NVIM
    "cache_dir"                                                                ; SKIP-NVIM
    "config_directory"                                                         ; SKIP-NVIM
    "config_dir"                                                               ; SKIP-NVIM
    "config_local_directory"                                                   ; SKIP-NVIM
    "config_local_dir"                                                         ; SKIP-NVIM
    "data_directory"                                                           ; SKIP-NVIM
    "data_dir"                                                                 ; SKIP-NVIM
    "data_local_directory"                                                     ; SKIP-NVIM
    "data_local_dir"                                                           ; SKIP-NVIM
    "executable_directory"                                                     ; SKIP-NVIM
    "executable_dir"                                                           ; SKIP-NVIM
    "home_directory"                                                           ; SKIP-NVIM
    "home_dir"                                                                 ; SKIP-NVIM
    "runtime_directory"                                                        ; SKIP-NVIM
    "runtime_dir"))                                                            ; SKIP-NVIM

(function_call                                                                 ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  name: (identifier) @function.builtin                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  (#any-of? @function.builtin                                                  ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "arch"                                                                     ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "num_cpus"                                                                 ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "os"                                                                       ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "os_family"                                                                ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "shell"                                                                    ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "env"                                                                      ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "env_var"                                                                  ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "env_var_or_default"                                                       ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "require"                                                                  ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "which"                                                                    ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "is_dependency"                                                            ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "invocation_directory"                                                     ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "invocation_dir"                                                           ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "invocation_directory_native"                                              ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "justfile"                                                                 ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "justfile_directory"                                                       ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "justfile_dir"                                                             ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "source_file"                                                              ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "source_directory"                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "source_dir"                                                               ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "module_file"                                                              ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "module_directory"                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "module_dir"                                                               ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "just_executable"                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "just_pid"                                                                 ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "append"                                                                   ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "prepend"                                                                  ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "encode_uri_components"                                                    ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "quote"                                                                    ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "replace"                                                                  ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "replace_regex"                                                            ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "trim"                                                                     ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "trim_end"                                                                 ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "trim_end_match"                                                           ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "trim_end_matches"                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "trim_start"                                                               ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "trim_start_match"                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "trim_start_matches"                                                       ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "capitalize"                                                               ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "kebabcase"                                                                ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "lowercamelcase"                                                           ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "lowercase"                                                                ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "shoutykebabcase"                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "shoutysnakecase"                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "snakecase"                                                                ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "titlecase"                                                                ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "uppercamelcase"                                                           ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "uppercase"                                                                ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "absolute_path"                                                            ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "canonicalize"                                                             ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "extension"                                                                ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "file_name"                                                                ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "file_stem"                                                                ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "parent_directory"                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "parent_dir"                                                               ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "without_extension"                                                        ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "clean"                                                                    ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "join"                                                                     ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "path_exists"                                                              ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "read"                                                                     ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "error"                                                                    ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "blake3"                                                                   ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "blake3_file"                                                              ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "sha256"                                                                   ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "sha256_file"                                                              ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "uuid"                                                                     ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "choose"                                                                   ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "datetime"                                                                 ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "datetime_utc"                                                             ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "semver_matches"                                                           ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "style"                                                                    ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "cache_directory"                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "cache_dir"                                                                ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "config_directory"                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "config_dir"                                                               ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "config_local_directory"                                                   ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "config_local_dir"                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "data_directory"                                                           ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "data_dir"                                                                 ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "data_local_directory"                                                     ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "data_local_dir"                                                           ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "executable_directory"                                                     ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "executable_dir"                                                           ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "home_directory"                                                           ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "home_dir"                                                                 ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "runtime_directory"                                                        ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
    "runtime_dir")                                                             ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  (#set! priority 110))                                                        ; SKIP-HELIX SKIP-LAPCE SKIP-ZED

; Parameters

(parameter
  name: (identifier) @variable.parameter)

; Namespaces

(module
  name: (identifier) @namespace)

; Operators

[                                                                              ; SKIP-NVIM
  ":="                                                                         ; SKIP-NVIM
  "?"                                                                          ; SKIP-NVIM
  "=="                                                                         ; SKIP-NVIM
  "!="                                                                         ; SKIP-NVIM
  "=~"                                                                         ; SKIP-NVIM
  "@"                                                                          ; SKIP-NVIM
  "="                                                                          ; SKIP-NVIM
  "$"                                                                          ; SKIP-NVIM
  "*"                                                                          ; SKIP-NVIM
  "+"                                                                          ; SKIP-NVIM
  "&&"                                                                         ; SKIP-NVIM
  "||"                                                                         ; SKIP-NVIM
  "@-"                                                                         ; SKIP-NVIM
  "-@"                                                                         ; SKIP-NVIM
  "-"                                                                          ; SKIP-NVIM
  "/"                                                                          ; SKIP-NVIM
  ":"                                                                          ; SKIP-NVIM
] @operator                                                                    ; SKIP-NVIM

([                                                                             ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  ":="                                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "?"                                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "=="                                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "!="                                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "=~"                                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "@"                                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "="                                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "$"                                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "*"                                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "+"                                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "&&"                                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "||"                                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "@-"                                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "-@"                                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "-"                                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "/"                                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  ":"                                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
] @operator                                                                    ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  (#set! priority 105))                                                        ; SKIP-HELIX SKIP-LAPCE SKIP-ZED

; Punctuation

"," @punctuation.delimiter                                                     ; SKIP-NVIM

("," @punctuation.delimiter                                                    ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  (#set! priority 105))                                                        ; SKIP-HELIX SKIP-LAPCE SKIP-ZED

([                                                                             ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "{{"                                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "}}"                                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
] @conceal                                                                     ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  (#set! conceal ""))                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED

[                                                                              ; SKIP-NVIM
  "{"                                                                          ; SKIP-NVIM
  "}"                                                                          ; SKIP-NVIM
  "["                                                                          ; SKIP-NVIM
  "]"                                                                          ; SKIP-NVIM
  "("                                                                          ; SKIP-NVIM
  ")"                                                                          ; SKIP-NVIM
  "{{"                                                                         ; SKIP-NVIM
  "}}"                                                                         ; SKIP-NVIM
] @punctuation.bracket                                                         ; SKIP-NVIM

([                                                                             ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "{"                                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "}"                                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "["                                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "]"                                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "("                                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  ")"                                                                          ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "{{"                                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  "}}"                                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
] @punctuation.bracket                                                         ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  (#set! priority 105))                                                        ; SKIP-HELIX SKIP-LAPCE SKIP-ZED

[ "`" "```" ] @punctuation.special                                             ; SKIP-NVIM

([ "`" "```" ] @punctuation.special                                            ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  (#set! priority 105))                                                        ; SKIP-HELIX SKIP-LAPCE SKIP-ZED

; Literals

(boolean) @constant.builtin.boolean                                            ; SKIP-NVIM

((boolean) @constant.builtin.boolean                                           ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  (#set! priority 105))                                                        ; SKIP-HELIX SKIP-LAPCE SKIP-ZED

[
  (string)
  (external_command)
] @string

(escape_sequence) @constant.character.escape                                   ; SKIP-NVIM

((escape_sequence) @constant.character.escape                                  ; SKIP-HELIX SKIP-LAPCE SKIP-ZED
  (#set! priority 105))                                                        ; SKIP-HELIX SKIP-LAPCE SKIP-ZED

; Comments

(comment) @spell @comment.line

(shebang) @keyword.directive

; highlight known settings (filtering does not always work)
(setting
  left: [
    "allow-duplicate-recipes"
    "allow-duplicate-variables"
    "dotenv-filename"
    "dotenv-load"
    "dotenv-path"
    "dotenv-required"
    "export"
    "fallback"
    "ignore-comments"
    "positional-arguments"
    "script-interpreter"
    "quiet"
    "shell"
    "tempdir"
    "unstable"
    "windows-powershell"
    "windows-shell"
    "working-directory"
  ] @keyword)

; highlight known attributes (filtering does not always work)
(attribute
  (identifier) @attribute
  (#any-of? @attribute
    "arg"
    "confirm"
    "default"
    "doc"
    "dragonfly"
    "env"
    "extension"
    "freebsd"
    "group"
    "linux"
    "macos"
    "metadata"
    "netbsd"
    "no-cd"
    "no-exit-message"
    "no-quiet"
    "openbsd"
    "parallel"
    "positional-arguments"
    "private"
    "script"
    "unix"
    "windows"
    "working-directory"))

; Numbers are part of the syntax tree, even if disallowed
(numeric_error) @error

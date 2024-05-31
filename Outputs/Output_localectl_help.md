localectl [OPTIONS...] COMMAND ...

Query or change system locale and keyboard settings.

Commands:
  status                   Show current locale settings
  set-locale LOCALE...     Set system locale
  list-locales             Show known locales
  set-keymap MAP [MAP]     Set console and X11 keyboard mappings
  list-keymaps             Show known virtual console keyboard mappings
  set-x11-keymap LAYOUT [MODEL [VARIANT [OPTIONS]]]
                           Set X11 and console keyboard mappings
  list-x11-keymap-models   Show known X11 keyboard mapping models
  list-x11-keymap-layouts  Show known X11 keyboard mapping layouts
  list-x11-keymap-variants [LAYOUT]
                           Show known X11 keyboard mapping variants
  list-x11-keymap-options  Show known X11 keyboard mapping options

Options:
  -h --help                Show this help
     --version             Show package version
     --no-pager            Do not pipe output into a pager
     --no-ask-password     Do not prompt for password
  -H --host=[USER@]HOST    Operate on remote host
  -M --machine=CONTAINER   Operate on local container
     --no-convert          Don't convert keyboard mappings

See the localectl(1) man page for details.

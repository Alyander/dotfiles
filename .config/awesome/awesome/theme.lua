local theme = {}

-- Основные цвета
theme.bg_normal     = "#213555"
theme.bg_focus      = "#3674B5"
theme.bg_urgent     = "#BF616A"
theme.bg_minimize   = "#1F509A"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#D8DEE9"
theme.fg_focus      = "#ECEFF4"
theme.fg_urgent     = "#ECEFF4"
theme.fg_minimize   = "#D8DEE9"

-- Шрифты
theme.font          = "Noto Sans Mono 9"

-- Окна
theme.border_width  = 2
theme.border_normal = "#2E3440"  
theme.border_focus  = "#155E95"  
theme.border_marked = "#D08770"  


-- Taglist
theme.taglist_fg_focus    = "#D9EAFD"  -- бирюзовый (nord8)
theme.taglist_bg_focus    = "#3674B5"

theme.taglist_fg_occupied = "#eceff4"  -- nord10, синий
theme.taglist_fg_empty    = "#434C5E"  -- nord2 (приглушённый серый)

theme.taglist_bg_empty    = theme.bg_normal
theme.taglist_bg_occupied = theme.bg_normal

-- Tasklist
theme.tasklist_bg_focus = "#3674B5"
theme.tasklist_fg_focus = "#ECEFF4"

-- Titlebar
theme.titlebar_bg_focus = "#3B4252"
theme.titlebar_bg_normal = "#2E3440"

-- Меню
theme.menu_height = 20
theme.menu_width  = 150
theme.wibar_bg = "#213555aa"
theme.systray_icon_spacing = 3
return theme
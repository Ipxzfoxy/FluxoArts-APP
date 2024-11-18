-- Função para alternar tema entre claro e escuro
function toggleTheme()
    local body = document:getElementsByTagName("body")[1]
    if body.className == "dark-theme" then
        body.className = ""
    else
        body.className = "dark-theme"
    end
end

-- Função para ativar estrelinhas no tema escuro
function activateStars()
    local body = document:getElementsByTagName("body")[1]
    if body.className == "dark-theme" then
        local starContainer = document:createElement("div")
        starContainer.className = "stars"
        body:appendChild(starContainer)
    else
        print("Ative o tema escuro antes de ativar as estrelinhas.")
    end
end

-- Eventos de clique para os botões
local themeButton = document:getElementById("themeToggle")
themeButton:addEventListener("click", toggleTheme)

local starButton = document:getElementById("starToggle")
starButton:addEventListener("click", activateStars)

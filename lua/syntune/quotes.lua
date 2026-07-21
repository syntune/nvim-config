local M = {}

local quotes = {
  "What I can understand, I modify.",
  "I build what I need and what does not exist yet.",
  "Nothing is sacred. Everything is understandable.",
  "I don't want answers in place of understanding. I want enough understanding to create my own answers.",
  "Less tools. More projects.",
  "Ideas are cheap. If you make it, I'll use it.",
  "Something is good except for the parts where it isn't.",
  "Do one thing and do it well."
}

M.current = quotes[1]

function M.randomize()
        M.current = quotes[math.random(#quotes)]
end

function M.get()
        return M.current
end

return M

local status_ok, kommentary = pcall(require, "kommentary")
if not status_ok then
	return
end

require('kommentary.config').configure_language("default", {
    prefer_single_line_comments = true,
})

local status, illuminate = pcall(require, 'illuminate')
if not status then
	print("Could not require vim-illuminate'")
	return
end

illuminate.configure({
	under_cursor = false,
})


local status, autopairs = pcall(require, 'nvim-autopairs')
if (not status) then return end

autopairs.setup {
	disable_filetype = { 'TelescopePrompt', 'vim' },
	fast_wrap = {
      map = '<C-;>',
      chars = { '{', '[', '(', '"', "'" },
      pattern = [=[[%'%"%>%]%)%}%,]]=],
      end_key = '$',
      before_key = 'h',
      after_key = 'l',
      cursor_pos_before = true,
      keys = 'qwertyuiopzxcvbnmasdfghjkl',
      manual_position = true,
      highlight = 'Search',
      highlight_grey='Comment'
    }
}

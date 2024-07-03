translator_target_lang = 'zh'
-- Type |String|
-- Refer to https://github.com/voldikss/vim-translator/wiki
-- Default: 'zh'
translator_source_lang = 'auto'
-- Type |String|
-- Refer to https://github.com/voldikss/vim-translator/wiki
-- Default: 'auto'
--translator_default_engines = 'bing'
-- Type |List| of |String|
-- Available: 'bing', 'google', 'haici', 'iciba'(expired), 'sdcv',
-- 'trans', 'youdao'
-- Default: If translator_target_lang is 'zh', this will be
-- ['bing', 'google', 'haici', 'youdao'], otherwise ['google']

--translator_proxy_url = ''
-- Type |String|
-- E.g.
-- `let translator_proxy_url = 'socks5://127.0.0.1:1080'`
-- Default: ''

--translator_history_enable = false
-- Type |Boolean|
-- Default: |v:false|

--translator_window_type
-- Type |String|
-- Available: 'popup'(use floatwin in nvim or popup in vim),
-- 'preview'
-- Default: 'popup'

--translator_window_max_width                *translator_window_max_width*
-- Type |Number|
-- Max width value of the popup/floating window
-- Default: 0.6*&columns

--translator_window_max_height               *translator_window_max_height*
-- Type |Number|
-- Max width value of the popup/floating height
-- Default: 0.6*&lines

--translator_window_borderchars              *translator_window_borderchars*
-- Type |List| of |String|
-- Default: ['─', '│', '─', '│', '┌', '┐', '┘', '└']

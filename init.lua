--[[

=====================================================================
==================== READ THIS BEFORE CONTINUING ====================
=====================================================================
========                                    .-----.          ========
========         .----------------------.   | === |          ========
========         |.-""""""""""""""""""-.|   |-----|          ========
========         ||                    ||   | === |          ========
========         ||   KICKSTART.NVIM   ||   |-----|          ========
========         ||                    ||   | === |          ========
========         ||                    ||   |-----|          ========
========         ||:Tutor              ||   |:::::|          ========
========         |'-..................-'|   |____o|          ========
========         `"")----------------(""`   ___________      ========
========        /::::::::::|  |::::::::::\  \ no mouse \     ========
========       /:::========|  |==hjkl==:::\  \ required \    ========
========      '""""""""""""'  '""""""""""""'  '""""""""""'   ========
========                                                     ========
=====================================================================
=====================================================================

What is Kickstart?
-- 킥스타트란 무엇인가요?

  Kickstart.nvim is *not* a distribution.
  -- Kickstart.nvim은 배포판(distro)이 *아닙니다*.

  Kickstart.nvim is a starting point for your own configuration.
  -- Kickstart.nvim은 여러분만의 설정을 시작하기 위한 출발점입니다.
    The goal is that you can read every line of code, top-to-bottom, understand
    what your configuration is doing, and modify it to suit your needs.
    -- 목표는 코드를 위에서 아래로 한 줄씩 읽으면서 설정이 무엇을 하는지 이해하고,
    -- 필요에 맞게 수정할 수 있게 하는 것입니다.

    Once you've done that, you can start exploring, configuring and tinkering to
    make Neovim your own! That might mean leaving Kickstart just the way it is for a while
    or immediately breaking it into modular pieces. It's up to you!
    -- 그렇게 하고 나면 Neovim을 자신만의 것으로 만들기 위해 탐색·설정·수정을 시작할 수 있습니다!
    -- 당분간 Kickstart를 그대로 사용하거나, 바로 모듈 조각으로 분리하거나 — 모두 당신의 선택입니다!

    If you don't know anything about Lua, I recommend taking some time to read through
    a guide. One possible example which will only take 10-15 minutes:
      - https://learnxinyminutes.com/docs/lua/
    -- Lua를 전혀 모른다면 가이드를 읽어 보는 시간을 갖기를 권장합니다.
    -- 10~15분이면 충분한 예시 가이드:
    --   - https://learnxinyminutes.com/docs/lua/

    After understanding a bit more about Lua, you can use `:help lua-guide` as a
    reference for how Neovim integrates Lua.
    - :help lua-guide
    - (or HTML version): https://neovim.io/doc/user/lua-guide.html
    -- Lua에 대해 조금 더 이해한 후에는 `:help lua-guide`를 참고해
    -- Neovim이 Lua를 어떻게 통합하는지 알아볼 수 있습니다.

Kickstart Guide:
-- 킥스타트 가이드:

  TODO: The very first thing you should do is to run the command `:Tutor` in Neovim.
  -- TODO: 가장 먼저 해야 할 일은 Neovim에서 `:Tutor` 명령을 실행하는 것입니다.

    If you don't know what this means, type the following:
      - <escape key>
      - :
      - Tutor
      - <enter key>
    -- 어떻게 하는지 모른다면 다음 순서로 입력하세요:
    --   - <Escape 키>
    --   - :
    --   - Tutor
    --   - <Enter 키>

    (If you already know the Neovim basics, you can skip this step.)
    -- (Neovim 기본기를 이미 알고 있다면 이 단계를 건너뛰어도 됩니다.)

  Once you've completed that, you can continue working through **AND READING** the rest
  of the kickstart init.lua.
  -- 완료했으면 kickstart init.lua의 나머지 부분을 **읽으면서** 계속 진행하세요.

  Next, run AND READ `:help`.
    This will open up a help window with some basic information
    about reading, navigating and searching the builtin help documentation.
  -- 다음으로 `:help`를 실행하고 **읽어보세요**.
  -- 내장 도움말 문서를 읽고, 탐색하고, 검색하는 방법에 대한
  -- 기본 정보가 담긴 도움말 창이 열립니다.

    This should be the first place you go to look when you're stuck or confused
    with something. It's one of my favorite Neovim features.
    -- 막히거나 헷갈릴 때 가장 먼저 찾아봐야 할 곳입니다.
    -- 제가 가장 좋아하는 Neovim 기능 중 하나입니다.

    MOST IMPORTANTLY, we provide a keymap "<space>sh" to [s]earch the [h]elp documentation,
    which is very useful when you're not exactly sure of what you're looking for.
    -- 가장 중요한 것은, 도움말 문서를 [s]검색[h]하는 키맵 "<space>sh"를 제공한다는 점입니다.
    -- 정확히 무엇을 찾아야 할지 모를 때 매우 유용합니다.

  I have left several `:help X` comments throughout the init.lua
    These are hints about where to find more information about the relevant settings,
    plugins or Neovim features used in Kickstart.
  -- init.lua 곳곳에 `:help X` 형태의 주석을 남겨 두었습니다.
  -- 관련 설정, 플러그인, Kickstart에서 사용하는 Neovim 기능에 대한
  -- 추가 정보를 어디서 찾을 수 있는지 알려주는 힌트입니다.

   NOTE: Look for lines like this
   -- NOTE: 이런 형태의 줄을 찾아보세요.

    Throughout the file. These are for you, the reader, to help you understand what is happening.
    Feel free to delete them once you know what you're doing, but they should serve as a guide
    for when you are first encountering a few different constructs in your Neovim config.
    -- 파일 전체에 걸쳐 있으며, 읽는 여러분이 무슨 일이 일어나는지 이해할 수 있도록 돕기 위한 것입니다.
    -- 무엇을 하는지 파악했다면 자유롭게 삭제해도 되지만,
    -- Neovim 설정에서 처음 마주치는 구조들을 이해하는 가이드로 활용하세요.

If you experience any errors while trying to install kickstart, run `:checkhealth` for more info.
-- kickstart 설치 중 오류가 발생하면 `:checkhealth`를 실행해 더 많은 정보를 확인하세요.

I hope you enjoy your Neovim journey,
-- Neovim 여정을 즐기시길 바랍니다,
- TJ

P.S. You can delete this when you're done too. It's your config now! :)
-- P.S. 다 읽었으면 이 블록도 삭제해도 됩니다. 이제 당신의 설정이니까요! :)
--]]

-- Set <space> as the leader key
-- 리더 키를 <space>로 설정합니다
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
--  NOTE: 플러그인이 로드되기 전에 설정해야 합니다 (그렇지 않으면 잘못된 리더 키가 사용됩니다)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
-- 터미널에 Nerd Font가 설치되어 선택되어 있으면 true로 설정하세요
vim.g.have_nerd_font = false

-- [[ Setting options ]]
-- [[ 옵션 설정 ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
-- NOTE: 이 옵션들은 원하는 대로 변경할 수 있습니다!
--  For more options, you can see `:help option-list`
--  더 많은 옵션은 `:help option-list`를 참고하세요

-- Make line numbers default
-- 줄 번호를 기본으로 표시합니다
vim.o.number = true
-- You can also add relative line numbers, to help with jumping.
-- 점프를 쉽게 하기 위해 상대 줄 번호를 추가할 수도 있습니다.
--  Experiment for yourself to see if you like it!
--  직접 실험해서 마음에 드는지 확인해 보세요!
-- vim.o.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
-- 마우스 모드를 활성화합니다. 예를 들어 분할 창 크기 조절에 유용합니다!
vim.o.mouse = 'a'

-- Don't show the mode, since it's already in the status line
-- 모드 표시를 숨깁니다. 이미 상태 표시줄에 표시되기 때문입니다
vim.o.showmode = false

-- Sync clipboard between OS and Neovim.
-- OS와 Neovim 간 클립보드를 동기화합니다.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  시작 시간 증가를 방지하기 위해 `UiEnter` 이후로 설정을 예약합니다.
--  Remove this option if you want your OS clipboard to remain independent.
--  OS 클립보드를 독립적으로 유지하려면 이 옵션을 제거하세요.
--  See `:help 'clipboard'`
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

-- Enable break indent
-- 줄 바꿈 들여쓰기를 활성화합니다
vim.o.breakindent = true

-- Save undo history
-- 되돌리기(undo) 기록을 저장합니다
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
-- 검색어에 \C 또는 대문자가 포함되지 않으면 대소문자를 구분하지 않고 검색합니다
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
-- 기호 열(signcolumn)을 항상 표시합니다
vim.o.signcolumn = 'yes'

-- Decrease update time
-- 업데이트 간격을 줄입니다
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
-- 키 시퀀스 대기 시간을 줄입니다
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
-- 새 분할 창이 열리는 방식을 설정합니다
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
-- 에디터에서 특정 공백 문자를 표시하는 방식을 설정합니다.
--  See `:help 'list'`
--  and `:help 'listchars'`
--
--  Notice listchars is set using `vim.opt` instead of `vim.o`.
--  listchars는 `vim.o` 대신 `vim.opt`로 설정합니다.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--  `vim.o`와 매우 유사하지만 테이블을 편리하게 다루는 인터페이스를 제공합니다.
--   See `:help lua-options`
--   and `:help lua-guide-options`
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
-- 입력하는 동안 실시간으로 치환 미리보기를 표시합니다!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
-- 커서가 위치한 줄을 강조 표시합니다
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
-- 커서 위아래로 유지할 최소 화면 줄 수입니다.
vim.o.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- 버퍼에 저장되지 않은 변경 사항이 있을 때 (`:q` 등) 작업이 실패하는 대신
-- 현재 파일을 저장할지 묻는 대화 상자를 표시합니다
-- See `:help 'confirm'`
vim.o.confirm = true

-- [[ Basic Keymaps ]]
-- [[ 기본 키맵 ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
-- 일반 모드에서 <Esc>를 누르면 검색 하이라이트를 지웁니다
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic Config & Keymaps
-- 진단(Diagnostic) 설정 및 키맵
-- See :help vim.diagnostic.Opts
vim.diagnostic.config {
  update_in_insert = false,
  severity_sort = true,
  float = { border = 'rounded', source = 'if_many' },
  underline = { severity = vim.diagnostic.severity.ERROR },

  -- Can switch between these as you prefer
  -- 원하는 방식으로 전환할 수 있습니다
  virtual_text = true, -- Text shows up at the end of the line
  -- virtual_text = true, -- 줄 끝에 텍스트로 표시됩니다
  virtual_lines = false, -- Teest shows up underneath the line, with virtual lines
  -- virtual_lines = false, -- 가상 줄로 해당 줄 아래에 표시됩니다

  -- Auto open the float, so you can easily read the errors when jumping with `[d` and `]d`
  -- `[d`와 `]d`로 이동할 때 플로팅 창이 자동으로 열려 오류를 쉽게 읽을 수 있습니다
  jump = { float = true },
}

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
-- 내장 터미널에서 터미널 모드를 더 쉽게 발견할 수 있는 단축키로 종료합니다.
-- 기본적으로는 <C-\><C-n>을 눌러야 하는데, 경험이 없으면 알기 어렵습니다.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
-- NOTE: 모든 터미널 에뮬레이터/tmux 등에서 동작하지 않을 수 있습니다.
-- 자신만의 키맵을 시도하거나 <C-\><C-n>으로 터미널 모드를 종료하세요.
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- TIP: 일반 모드에서 방향키를 비활성화합니다
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
-- 분할 창 이동을 쉽게 해주는 키 바인딩입니다.
--  Use CTRL+<hjkl> to switch between windows
--  CTRL+<hjkl>로 창 사이를 전환합니다
--
--  See `:help wincmd` for a list of all window commands
--  모든 창 명령 목록은 `:help wincmd`를 참고하세요
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- NOTE: 일부 터미널은 키맵이 충돌하거나 서로 다른 키코드를 전송하지 못할 수 있습니다
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

-- [[ Basic Autocommands ]]
-- [[ 기본 자동 명령(Autocommands) ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
-- 텍스트를 복사(yank)할 때 하이라이트 표시합니다
--  Try it with `yap` in normal mode
--  일반 모드에서 `yap`으로 시험해 보세요
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function() vim.hl.on_yank() end,
})

-- [[ Install `lazy.nvim` plugin manager ]]
-- [[ `lazy.nvim` 플러그인 매니저 설치 ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then error('Error cloning lazy.nvim:\n' .. out) end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
-- [[ 플러그인 설정 및 설치 ]]
--
--  To check the current status of your plugins, run
--  플러그인의 현재 상태를 확인하려면 다음을 실행하세요
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--  이 메뉴에서 `?`를 눌러 도움말을 볼 수 있습니다. `:q`로 창을 닫습니다
--
--  To update plugins you can run
--  플러그인을 업데이트하려면 다음을 실행하세요
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
-- NOTE: 여기에 플러그인을 설치합니다.
require('lazy').setup({
  -- NOTE: Plugins can be added via a link or github org/name. To run setup automatically, use `opts = {}`
  -- NOTE: 플러그인은 링크나 github org/이름 형식으로 추가할 수 있습니다. 자동으로 setup을 실행하려면 `opts = {}`를 사용하세요
  { 'NMAC427/guess-indent.nvim', opts = {} },

  -- Alternatively, use `config = function() ... end` for full control over the configuration.
  -- 또는 `config = function() ... end`를 사용하여 설정을 완전히 제어할 수 있습니다.
  -- If you prefer to call `setup` explicitly, use:
  --    {
  --        'lewis6991/gitsigns.nvim',
  --        config = function()
  --            require('gitsigns').setup({
  --                -- Your gitsigns configuration here
  --            })
  --        end,
  --    }
  --
  -- Here is a more advanced example where we pass configuration
  -- options to `gitsigns.nvim`.
  -- 다음은 `gitsigns.nvim`에 설정 옵션을 전달하는 더 고급 예시입니다.
  --
  -- See `:help gitsigns` to understand what the configuration keys do
  -- 설정 키가 무엇을 하는지 이해하려면 `:help gitsigns`를 참고하세요
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
  -- git 관련 표시를 여백(gutter)에 추가하고, 변경 사항 관리 유틸리티도 제공합니다
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },

  -- NOTE: Plugins can also be configured to run Lua code when they are loaded.
  -- NOTE: 플러그인이 로드될 때 Lua 코드를 실행하도록 설정할 수도 있습니다.
  --
  -- This is often very useful to both group configuration, as well as handle
  -- lazy loading plugins that don't need to be loaded immediately at startup.
  -- 이는 설정을 그룹화하고, 시작 시 즉시 로드할 필요 없는 플러그인을
  -- 지연 로드(lazy loading)하는 데 매우 유용합니다.
  --
  -- For example, in the following configuration, we use:
  -- 예를 들어, 다음 설정에서는 아래를 사용합니다:
  --  event = 'VimEnter'
  --
  -- which loads which-key before all the UI elements are loaded. Events can be
  -- normal autocommands events (`:help autocmd-events`).
  -- 이는 모든 UI 요소가 로드되기 전에 which-key를 로드합니다.
  -- 이벤트는 일반 autocommand 이벤트입니다 (`:help autocmd-events`).
  --
  -- Then, because we use the `opts` key (recommended), the configuration runs
  -- after the plugin has been loaded as `require(MODULE).setup(opts)`.
  -- 그리고 `opts` 키를 사용하면(권장) 플러그인이 로드된 후
  -- `require(MODULE).setup(opts)` 형태로 설정이 실행됩니다.

  { -- Useful plugin to show you pending keybinds.
  -- 대기 중인 키 바인딩을 보여주는 유용한 플러그인입니다.
    'folke/which-key.nvim',
    event = 'VimEnter',
    opts = {
      -- delay between pressing a key and opening which-key (milliseconds)
      delay = 0,
      icons = { mappings = vim.g.have_nerd_font },

      -- Document existing key chains
      -- 기존 키 체인을 문서화합니다
      spec = {
        { '<leader>s', group = '[S]earch', mode = { 'n', 'v' } },
        { '<leader>t', group = '[T]oggle' },
        { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
      },
    },
  },

  -- NOTE: Plugins can specify dependencies.
  -- NOTE: 플러그인은 의존성을 지정할 수 있습니다.
  --
  -- The dependencies are proper plugin specifications as well - anything
  -- you do for a plugin at the top level, you can do for a dependency.
  -- 의존성도 정식 플러그인 사양입니다 — 최상위 플러그인에 할 수 있는 것은
  -- 의존성에도 동일하게 할 수 있습니다.
  --
  -- Use the `dependencies` key to specify the dependencies of a particular plugin
  -- 특정 플러그인의 의존성을 지정하려면 `dependencies` 키를 사용하세요

  { -- Fuzzy Finder (files, lsp, etc)
  -- 퍼지 파인더(파일, LSP 등)
    'nvim-telescope/telescope.nvim',
    -- By default, Telescope is included and acts as your picker for everything.
    -- 기본적으로 Telescope가 포함되어 모든 것의 선택기(picker)로 동작합니다.

    -- If you would like to switch to a different picker (like snacks, or fzf-lua)
    -- 다른 선택기(snacks, fzf-lua 등)로 전환하고 싶다면
    -- you can disable the Telescope plugin by setting enabled to false and enable
    -- Telescope 플러그인의 enabled를 false로 설정하고,
    -- your replacement picker by requiring it explicitly (e.g. 'custom.plugins.snacks')
    -- 대체 선택기를 명시적으로 require해서 활성화하세요 (예: 'custom.plugins.snacks')

    -- Note: If you customize your config for yourself,
    -- 참고: 자신만의 설정으로 커스터마이즈할 경우,
    -- it's best to remove the Telescope plugin config entirely
    -- 설정을 깔끔하게 유지하기 위해 Telescope 플러그인 설정을 여기서 비활성화하는 것보다
    -- instead of just disabling it here, to keep your config clean.
    -- 아예 제거하는 것이 좋습니다.
    enabled = true,
    event = 'VimEnter',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { -- If encountering errors, see telescope-fzf-native README for installation instructions
      -- 오류가 발생하면 telescope-fzf-native README의 설치 지침을 참고하세요
        'nvim-telescope/telescope-fzf-native.nvim',

        -- `build` is used to run some command when the plugin is installed/updated.
        -- `build`는 플러그인이 설치/업데이트될 때 특정 명령을 실행하는 데 사용됩니다.
        -- This is only run then, not every time Neovim starts up.
        -- Neovim이 시작될 때마다 실행되는 것이 아니라 그 때만 실행됩니다.
        build = 'make',

        -- `cond` is a condition used to determine whether this plugin should be
        -- `cond`는 이 플러그인을 설치하고 로드할지 결정하는 조건입니다.
        -- installed and loaded.
        cond = function() return vim.fn.executable 'make' == 1 end,
      },
      { 'nvim-telescope/telescope-ui-select.nvim' },

      -- Useful for getting pretty icons, but requires a Nerd Font.
      -- 예쁜 아이콘을 표시하는 데 유용하지만 Nerd Font가 필요합니다.
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
    config = function()
      -- Telescope is a fuzzy finder that comes with a lot of different things that
      -- it can fuzzy find! It's more than just a "file finder", it can search
      -- many different aspects of Neovim, your workspace, LSP, and more!
      -- Telescope는 다양한 것들을 퍼지 검색할 수 있는 퍼지 파인더입니다!
      -- 단순한 "파일 탐색기"가 아니라 Neovim의 여러 측면, 작업 공간, LSP 등
      -- 다양한 것들을 검색할 수 있습니다!
      --
      -- The easiest way to use Telescope, is to start by doing something like:
      -- Telescope를 사용하는 가장 쉬운 방법은 다음과 같이 시작하는 것입니다:
      --  :Telescope help_tags
      --
      -- After running this command, a window will open up and you're able to
      -- type in the prompt window. You'll see a list of `help_tags` options and
      -- a corresponding preview of the help.
      -- 이 명령을 실행하면 창이 열리고 프롬프트 창에 입력할 수 있습니다.
      -- `help_tags` 옵션 목록과 해당 도움말 미리보기가 표시됩니다.
      --
      -- Two important keymaps to use while in Telescope are:
      -- Telescope 사용 중 중요한 키맵 두 가지:
      --  - Insert mode: <c-/>
      --  - Normal mode: ?
      --
      -- This opens a window that shows you all of the keymaps for the current
      -- Telescope picker. This is really useful to discover what Telescope can
      -- do as well as how to actually do it!
      -- 현재 Telescope 선택기의 모든 키맵을 보여주는 창이 열립니다.
      -- Telescope가 무엇을 할 수 있는지, 어떻게 사용하는지 알아보는 데 매우 유용합니다!

      -- [[ Configure Telescope ]]
      -- [[ Telescope 설정 ]]
      -- See `:help telescope` and `:help telescope.setup()`
      require('telescope').setup {
        -- You can put your default mappings / updates / etc. in here
        -- 기본 매핑 / 업데이트 등을 여기에 넣을 수 있습니다
        --  All the info you're looking for is in `:help telescope.setup()`
        --  필요한 모든 정보는 `:help telescope.setup()`에 있습니다
        --
        -- defaults = {
        --   mappings = {
        --     i = { ['<c-enter>'] = 'to_fuzzy_refine' },
        --   },
        -- },
        -- pickers = {}
        extensions = {
          ['ui-select'] = { require('telescope.themes').get_dropdown() },
        },
      }

      -- Enable Telescope extensions if they are installed
      -- 설치된 Telescope 확장 기능을 활성화합니다
      pcall(require('telescope').load_extension, 'fzf')
      pcall(require('telescope').load_extension, 'ui-select')

      -- See `:help telescope.builtin`
      -- 사용 가능한 내장 기능은 `:help telescope.builtin`을 참고하세요
      local builtin = require 'telescope.builtin'
      vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
      vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
      vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
      vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
      vim.keymap.set({ 'n', 'v' }, '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
      vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
      vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
      vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
      vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
      vim.keymap.set('n', '<leader>sc', builtin.commands, { desc = '[S]earch [C]ommands' })
      vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

      -- This runs on LSP attach per buffer (see main LSP attach function in 'neovim/nvim-lspconfig' config for more info,
      -- it is better explained there). This allows easily switching between pickers if you prefer using something else!
      -- LSP가 버퍼에 붙을 때마다 실행됩니다 ('neovim/nvim-lspconfig' 설정의 메인 LSP 연결 함수 참고).
      -- 다른 선택기를 선호한다면 쉽게 전환할 수 있습니다!
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('telescope-lsp-attach', { clear = true }),
        callback = function(event)
          local buf = event.buf

          -- Find references for the word under your cursor.
          -- 커서 아래 단어의 참조를 찾습니다.
          vim.keymap.set('n', 'grr', builtin.lsp_references, { buffer = buf, desc = '[G]oto [R]eferences' })

          -- Jump to the implementation of the word under your cursor.
          -- Useful when your language has ways of declaring types without an actual implementation.
          -- 커서 아래 단어의 구현으로 이동합니다.
          -- 실제 구현 없이 타입을 선언하는 언어에서 유용합니다.
          vim.keymap.set('n', 'gri', builtin.lsp_implementations, { buffer = buf, desc = '[G]oto [I]mplementation' })

          -- Jump to the definition of the word under your cursor.
          -- This is where a variable was first declared, or where a function is defined, etc.
          -- To jump back, press <C-t>.
          -- 커서 아래 단어의 정의로 이동합니다.
          -- 변수가 처음 선언된 곳이나 함수가 정의된 곳 등입니다.
          -- 돌아오려면 <C-t>를 누르세요.
          vim.keymap.set('n', 'grd', builtin.lsp_definitions, { buffer = buf, desc = '[G]oto [D]efinition' })

          -- Fuzzy find all the symbols in your current document.
          -- Symbols are things like variables, functions, types, etc.
          -- 현재 문서의 모든 심볼을 퍼지 검색합니다.
          -- 심볼은 변수, 함수, 타입 등입니다.
          vim.keymap.set('n', 'gO', builtin.lsp_document_symbols, { buffer = buf, desc = 'Open Document Symbols' })

          -- Fuzzy find all the symbols in your current workspace.
          -- Similar to document symbols, except searches over your entire project.
          -- 현재 작업 공간의 모든 심볼을 퍼지 검색합니다.
          -- 문서 심볼과 유사하지만 전체 프로젝트를 검색합니다.
          vim.keymap.set('n', 'gW', builtin.lsp_dynamic_workspace_symbols, { buffer = buf, desc = 'Open Workspace Symbols' })

          -- Jump to the type of the word under your cursor.
          -- Useful when you're not sure what type a variable is and you want to see
          -- the definition of its *type*, not where it was *defined*.
          -- 커서 아래 단어의 타입으로 이동합니다.
          -- 변수의 타입이 무엇인지 확실하지 않을 때 유용합니다.
          -- 변수가 *정의된 곳*이 아니라 그 *타입*의 정의로 이동합니다.
          vim.keymap.set('n', 'grt', builtin.lsp_type_definitions, { buffer = buf, desc = '[G]oto [T]ype Definition' })
        end,
      })

      -- Override default behavior and theme when searching
      -- 검색 시 기본 동작과 테마를 재정의합니다
      vim.keymap.set('n', '<leader>/', function()
        -- You can pass additional configuration to Telescope to change the theme, layout, etc.
        -- Telescope에 추가 설정을 전달하여 테마, 레이아웃 등을 변경할 수 있습니다.
        builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
          winblend = 10,
          previewer = false,
        })
      end, { desc = '[/] Fuzzily search in current buffer' })

      -- It's also possible to pass additional configuration options.
      -- 추가 설정 옵션을 전달하는 것도 가능합니다.
      --  See `:help telescope.builtin.live_grep()` for information about particular keys
      --  특정 키에 대한 정보는 `:help telescope.builtin.live_grep()`를 참고하세요
      vim.keymap.set(
        'n',
        '<leader>s/',
        function()
          builtin.live_grep {
            grep_open_files = true,
            prompt_title = 'Live Grep in Open Files',
          }
        end,
        { desc = '[S]earch [/] in Open Files' }
      )

      -- Shortcut for searching your Neovim configuration files
      -- Neovim 설정 파일을 검색하는 단축키입니다
      vim.keymap.set('n', '<leader>sn', function() builtin.find_files { cwd = vim.fn.stdpath 'config' } end, { desc = '[S]earch [N]eovim files' })
    end,
  },

  -- LSP Plugins
  -- LSP 플러그인
  {
    -- Main LSP Configuration
    -- 메인 LSP 설정
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs and related tools to stdpath for Neovim
      -- Neovim의 stdpath에 LSP 및 관련 도구를 자동으로 설치합니다
      -- Mason must be loaded before its dependents so we need to set it up here.
      -- Mason은 의존 플러그인보다 먼저 로드되어야 하므로 여기서 설정합니다.
      -- NOTE: `opts = {}` is the same as calling `require('mason').setup({})`
      -- NOTE: `opts = {}`는 `require('mason').setup({})`를 호출하는 것과 동일합니다
      { 'mason-org/mason.nvim', opts = {} },
      { 'mason-org/mason-lspconfig.nvim', opts = {} },
      'WhoIsSethDaniel/mason-tool-installer.nvim',

      -- Useful status updates for LSP.
      -- LSP 상태 업데이트를 표시하는 유용한 플러그인입니다.
      { 'j-hui/fidget.nvim', opts = {} },

      -- Allows extra capabilities provided by blink.cmp
      -- blink.cmp이 제공하는 추가 기능을 허용합니다
      'saghen/blink.cmp',
    },
    config = function()
      -- Brief aside: **What is LSP?**
      -- 간단한 설명: **LSP란 무엇인가요?**
      --
      -- LSP is an initialism you've probably heard, but might not understand what it is.
      -- LSP는 아마 들어봤지만 무엇인지 모를 수도 있는 약어입니다.
      --
      -- LSP stands for Language Server Protocol. It's a protocol that helps editors
      -- and language tooling communicate in a standardized fashion.
      -- LSP는 Language Server Protocol의 약자입니다. 에디터와 언어 도구가
      -- 표준화된 방식으로 통신하도록 돕는 프로토콜입니다.
      --
      -- In general, you have a "server" which is some tool built to understand a particular
      -- language (such as `gopls`, `lua_ls`, `rust_analyzer`, etc.). These Language Servers
      -- (sometimes called LSP servers, but that's kind of like ATM Machine) are standalone
      -- processes that communicate with some "client" - in this case, Neovim!
      -- 일반적으로 특정 언어를 이해하기 위해 만들어진 "서버"가 있습니다
      -- (`gopls`, `lua_ls`, `rust_analyzer` 등). 이 언어 서버들은
      -- (LSP 서버라고도 불리지만 ATM 기계처럼 중복 표현입니다) 독립적인
      -- 프로세스로, "클라이언트" — 여기서는 Neovim — 과 통신합니다!
      --
      -- LSP provides Neovim with features like:
      -- LSP는 Neovim에 다음과 같은 기능을 제공합니다:
      --  - Go to definition
      --  - 정의로 이동
      --  - Find references
      --  - 참조 찾기
      --  - Autocompletion
      --  - 자동 완성
      --  - Symbol Search
      --  - 심볼 검색
      --  - and more!
      --  - 그 외 더 많은 기능!
      --
      -- Thus, Language Servers are external tools that must be installed separately from
      -- Neovim. This is where `mason` and related plugins come into play.
      -- 따라서 언어 서버는 Neovim과 별도로 설치해야 하는 외부 도구입니다.
      -- 여기서 `mason`과 관련 플러그인이 등장합니다.
      --
      -- If you're wondering about lsp vs treesitter, you can check out the wonderfully
      -- and elegantly composed help section, `:help lsp-vs-treesitter`
      -- lsp와 treesitter의 차이가 궁금하다면 훌륭하고 우아하게 작성된
      -- 도움말 섹션 `:help lsp-vs-treesitter`를 확인하세요

      --  This function gets run when an LSP attaches to a particular buffer.
      --    That is to say, every time a new file is opened that is associated with
      --    an lsp (for example, opening `main.rs` is associated with `rust_analyzer`) this
      --    function will be executed to configure the current buffer
      --  이 함수는 LSP가 특정 버퍼에 연결될 때 실행됩니다.
      --  즉, LSP와 연결된 새 파일이 열릴 때마다 (예: `main.rs`를 열면 `rust_analyzer`와 연결)
      --  이 함수가 현재 버퍼를 설정하기 위해 실행됩니다
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
        callback = function(event)
          -- NOTE: Remember that Lua is a real programming language, and as such it is possible
          -- to define small helper and utility functions so you don't have to repeat yourself.
          -- NOTE: Lua는 실제 프로그래밍 언어이므로 반복을 피하기 위해
          -- 작은 헬퍼 및 유틸리티 함수를 정의할 수 있다는 것을 기억하세요.
          --
          -- In this case, we create a function that lets us more easily define mappings specific
          -- for LSP related items. It sets the mode, buffer and description for us each time.
          -- 여기서는 LSP 관련 항목에 특화된 매핑을 더 쉽게 정의하는 함수를 만듭니다.
          -- 매번 모드, 버퍼, 설명을 자동으로 설정합니다.
          local map = function(keys, func, desc, mode)
            mode = mode or 'n'
            vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
          end

          -- Rename the variable under your cursor.
          --  Most Language Servers support renaming across files, etc.
          -- 커서 아래 변수의 이름을 바꿉니다.
          --  대부분의 언어 서버는 파일 전체에서 이름 바꾸기를 지원합니다.
          map('grn', vim.lsp.buf.rename, '[R]e[n]ame')

          -- Execute a code action, usually your cursor needs to be on top of an error
          -- or a suggestion from your LSP for this to activate.
          -- 코드 액션을 실행합니다. 보통 커서가 LSP의 오류나 제안 위에 있어야 활성화됩니다.
          map('gra', vim.lsp.buf.code_action, '[G]oto Code [A]ction', { 'n', 'x' })

          -- WARN: This is not Goto Definition, this is Goto Declaration.
          --  For example, in C this would take you to the header.
          -- WARN: 이것은 정의(Definition)로 이동이 아니라 선언(Declaration)으로 이동입니다.
          --  예를 들어, C에서는 헤더 파일로 이동합니다.
          map('grD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')

          -- The following two autocommands are used to highlight references of the
          -- word under your cursor when your cursor rests there for a little while.
          --    See `:help CursorHold` for information about when this is executed
          -- 다음 두 autocommand는 커서가 잠시 멈춰 있을 때
          -- 커서 아래 단어의 참조를 하이라이트하는 데 사용됩니다.
          --    언제 실행되는지는 `:help CursorHold`를 참고하세요
          --
          -- When you move your cursor, the highlights will be cleared (the second autocommand).
          -- 커서를 이동하면 하이라이트가 지워집니다 (두 번째 autocommand).
          local client = vim.lsp.get_client_by_id(event.data.client_id)
          if client and client:supports_method('textDocument/documentHighlight', event.buf) then
            local highlight_augroup = vim.api.nvim_create_augroup('kickstart-lsp-highlight', { clear = false })
            vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
              buffer = event.buf,
              group = highlight_augroup,
              callback = vim.lsp.buf.document_highlight,
            })

            vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
              buffer = event.buf,
              group = highlight_augroup,
              callback = vim.lsp.buf.clear_references,
            })

            vim.api.nvim_create_autocmd('LspDetach', {
              group = vim.api.nvim_create_augroup('kickstart-lsp-detach', { clear = true }),
              callback = function(event2)
                vim.lsp.buf.clear_references()
                vim.api.nvim_clear_autocmds { group = 'kickstart-lsp-highlight', buffer = event2.buf }
              end,
            })
          end

          -- The following code creates a keymap to toggle inlay hints in your
          -- code, if the language server you are using supports them
          -- 다음 코드는 사용 중인 언어 서버가 인레이 힌트를 지원하는 경우
          -- 코드의 인레이 힌트를 토글하는 키맵을 만듭니다
          --
          -- This may be unwanted, since they displace some of your code
          -- 코드 일부를 밀어내므로 원하지 않을 수도 있습니다
          if client and client:supports_method('textDocument/inlayHint', event.buf) then
            map('<leader>th', function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = event.buf }) end, '[T]oggle Inlay [H]ints')
          end
        end,
      })

      -- LSP servers and clients are able to communicate to each other what features they support.
      --  By default, Neovim doesn't support everything that is in the LSP specification.
      --  When you add blink.cmp, luasnip, etc. Neovim now has *more* capabilities.
      --  So, we create new capabilities with blink.cmp, and then broadcast that to the servers.
      -- LSP 서버와 클라이언트는 서로 지원하는 기능을 알릴 수 있습니다.
      --  기본적으로 Neovim은 LSP 사양의 모든 것을 지원하지 않습니다.
      --  blink.cmp, luasnip 등을 추가하면 Neovim의 기능이 *더* 많아집니다.
      --  따라서 blink.cmp로 새 기능을 만들고 서버에 전달합니다.
      local capabilities = require('blink.cmp').get_lsp_capabilities()

      -- Enable the following language servers
      -- 다음 언어 서버를 활성화합니다
      --  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
      --  원하는 LSP를 자유롭게 추가/제거하세요. 자동으로 설치됩니다.
      --  See `:help lsp-config` for information about keys and how to configure
      --  키와 설정 방법은 `:help lsp-config`를 참고하세요
      local servers = {
        -- clangd = {},
        -- gopls = {},
        -- pyright = {},
        -- rust_analyzer = {},
        --
        -- Some languages (like typescript) have entire language plugins that can be useful:
        -- 일부 언어(typescript 등)는 유용한 전용 언어 플러그인이 있습니다:
        --    https://github.com/pmizio/typescript-tools.nvim
        --
        -- But for many setups, the LSP (`ts_ls`) will work just fine
        -- 하지만 대부분의 경우 LSP (`ts_ls`)만으로 충분합니다
        -- ts_ls = {},
      }

      -- Ensure the servers and tools above are installed
      -- 위의 서버와 도구가 설치되어 있는지 확인합니다
      --
      -- To check the current status of installed tools and/or manually install
      -- other tools, you can run
      -- 설치된 도구의 현재 상태를 확인하거나 수동으로 다른 도구를 설치하려면
      -- 다음을 실행하세요
      --    :Mason
      --
      -- You can press `g?` for help in this menu.
      -- 이 메뉴에서 `g?`를 눌러 도움말을 볼 수 있습니다.
      local ensure_installed = vim.tbl_keys(servers or {})
      vim.list_extend(ensure_installed, {
        'lua_ls', -- Lua Language server
        -- 'lua_ls', -- Lua 언어 서버
        'stylua', -- Used to format Lua code
        -- 'stylua', -- Lua 코드 포맷터
        -- You can add other tools here that you want Mason to install
        -- Mason이 설치할 다른 도구를 여기에 추가할 수 있습니다
      })

      require('mason-tool-installer').setup { ensure_installed = ensure_installed }

      for name, server in pairs(servers) do
        server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
        vim.lsp.config(name, server)
        vim.lsp.enable(name)
      end

      -- Special Lua Config, as recommended by neovim help docs
      -- neovim 도움말 문서에서 권장하는 특별한 Lua 설정
      vim.lsp.config('lua_ls', {
        on_init = function(client)
          if client.workspace_folders then
            local path = client.workspace_folders[1].name
            if path ~= vim.fn.stdpath 'config' and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc')) then return end
          end

          client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
            runtime = {
              version = 'LuaJIT',
              path = { 'lua/?.lua', 'lua/?/init.lua' },
            },
            workspace = {
              checkThirdParty = false,
              -- NOTE: this is a lot slower and will cause issues when working on your own configuration.
              -- NOTE: 이 설정은 훨씬 느리며 자신의 설정을 작업할 때 문제를 일으킬 수 있습니다.
              --  See https://github.com/neovim/nvim-lspconfig/issues/3189
              library = vim.api.nvim_get_runtime_file('', true),
            },
          })
        end,
        settings = {
          Lua = {},
        },
      })
      vim.lsp.enable 'lua_ls'
    end,
  },

  { -- Autoformat
  -- 자동 포맷
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>f',
        function() require('conform').format { async = true, lsp_format = 'fallback' } end,
        mode = '',
        desc = '[F]ormat buffer',
      },
    },
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        -- Disable "format_on_save lsp_fallback" for languages that don't
        -- have a well standardized coding style. You can add additional
        -- languages here or re-enable it for the disabled ones.
        -- 코딩 스타일이 잘 표준화되지 않은 언어에 대해 "format_on_save lsp_fallback"을
        -- 비활성화합니다. 여기에 언어를 추가하거나 비활성화된 언어를 다시 활성화할 수 있습니다.
        local disable_filetypes = { c = true, cpp = true }
        if disable_filetypes[vim.bo[bufnr].filetype] then
          return nil
        else
          return {
            timeout_ms = 500,
            lsp_format = 'fallback',
          }
        end
      end,
      formatters_by_ft = {
        lua = { 'stylua' },
        -- Conform can also run multiple formatters sequentially
        -- Conform은 여러 포맷터를 순서대로 실행할 수도 있습니다
        -- python = { "isort", "black" },
        --
        -- You can use 'stop_after_first' to run the first available formatter from the list
        -- 목록에서 사용 가능한 첫 번째 포맷터만 실행하려면 'stop_after_first'를 사용하세요
        -- javascript = { "prettierd", "prettier", stop_after_first = true },
      },
    },
  },

  { -- Autocompletion
  -- 자동 완성
    'saghen/blink.cmp',
    event = 'VimEnter',
    version = '1.*',
    dependencies = {
      -- Snippet Engine
      -- 스니펫 엔진
      {
        'L3MON4D3/LuaSnip',
        version = '2.*',
        build = (function()
          -- Build Step is needed for regex support in snippets.
          -- 스니펫에서 정규식 지원을 위해 빌드 단계가 필요합니다.
          -- This step is not supported in many windows environments.
          -- 이 단계는 많은 Windows 환경에서 지원되지 않습니다.
          -- Remove the below condition to re-enable on windows.
          -- Windows에서 다시 활성화하려면 아래 조건을 제거하세요.
          if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then return end
          return 'make install_jsregexp'
        end)(),
        dependencies = {
          -- `friendly-snippets` contains a variety of premade snippets.
          --    See the README about individual language/framework/plugin snippets:
          --    https://github.com/rafamadriz/friendly-snippets
          -- `friendly-snippets`에는 다양한 미리 만들어진 스니펫이 포함되어 있습니다.
          --    개별 언어/프레임워크/플러그인 스니펫은 README를 참고하세요:
          -- {
          --   'rafamadriz/friendly-snippets',
          --   config = function()
          --     require('luasnip.loaders.from_vscode').lazy_load()
          --   end,
          -- },
        },
        opts = {},
      },
    },
    --- @module 'blink.cmp'
    --- @type blink.cmp.Config
    opts = {
      keymap = {
        -- 'default' (recommended) for mappings similar to built-in completions
        -- 내장 자동 완성과 유사한 매핑을 위한 'default' (권장)
        --   <c-y> to accept ([y]es) the completion.
        --   <c-y>로 완성을 수락합니다 ([y]es).
        --    This will auto-import if your LSP supports it.
        --    LSP가 지원하는 경우 자동으로 import합니다.
        --    This will expand snippets if the LSP sent a snippet.
        --    LSP가 스니펫을 보내면 스니펫을 확장합니다.
        -- 'super-tab' for tab to accept
        -- tab으로 수락하려면 'super-tab'
        -- 'enter' for enter to accept
        -- enter로 수락하려면 'enter'
        -- 'none' for no mappings
        -- 매핑 없으면 'none'
        --
        -- For an understanding of why the 'default' preset is recommended,
        -- 'default' 프리셋이 권장되는 이유를 이해하려면
        -- you will need to read `:help ins-completion`
        -- `:help ins-completion`을 읽어야 합니다
        --
        -- No, but seriously. Please read `:help ins-completion`, it is really good!
        -- 정말입니다. `:help ins-completion`을 꼭 읽어보세요, 정말 좋습니다!
        --
        -- All presets have the following mappings:
        -- 모든 프리셋에 공통으로 있는 매핑:
        -- <tab>/<s-tab>: move to right/left of your snippet expansion
        -- <tab>/<s-tab>: 스니펫 확장의 오른쪽/왼쪽으로 이동
        -- <c-space>: Open menu or open docs if already open
        -- <c-space>: 메뉴 열기, 또는 이미 열려 있으면 문서 열기
        -- <c-n>/<c-p> or <up>/<down>: Select next/previous item
        -- <c-n>/<c-p> 또는 <up>/<down>: 다음/이전 항목 선택
        -- <c-e>: Hide menu
        -- <c-e>: 메뉴 숨기기
        -- <c-k>: Toggle signature help
        -- <c-k>: 시그니처 도움말 토글
        --
        -- See :h blink-cmp-config-keymap for defining your own keymap
        -- 자신만의 키맵 정의는 :h blink-cmp-config-keymap 참고
        preset = 'default',

        -- For more advanced Luasnip keymaps (e.g. selecting choice nodes, expansion) see:
        -- 더 고급 Luasnip 키맵(예: choice 노드 선택, 확장)은:
        --    https://github.com/L3MON4D3/LuaSnip?tab=readme-ov-file#keymaps
      },

      appearance = {
        -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- 'Nerd Font Mono'는 'mono' (기본값), 'Nerd Font'는 'normal'
        -- Adjusts spacing to ensure icons are aligned
        -- 아이콘이 정렬되도록 간격을 조정합니다
        nerd_font_variant = 'mono',
      },

      completion = {
        -- By default, you may press `<c-space>` to show the documentation.
        -- 기본적으로 `<c-space>`를 눌러 문서를 표시할 수 있습니다.
        -- Optionally, set `auto_show = true` to show the documentation after a delay.
        -- 또는 `auto_show = true`로 설정하면 지연 후 문서가 자동으로 표시됩니다.
        documentation = { auto_show = false, auto_show_delay_ms = 500 },
      },

      sources = {
        default = { 'lsp', 'path', 'snippets' },
      },

      snippets = { preset = 'luasnip' },

      -- Blink.cmp includes an optional, recommended rust fuzzy matcher,
      -- which automatically downloads a prebuilt binary when enabled.
      -- Blink.cmp에는 선택적으로 권장되는 rust 퍼지 매처가 포함되어 있으며,
      -- 활성화하면 미리 빌드된 바이너리를 자동으로 다운로드합니다.
      --
      -- By default, we use the Lua implementation instead, but you may enable
      -- the rust implementation via `'prefer_rust_with_warning'`
      -- 기본적으로 Lua 구현을 사용하지만 `'prefer_rust_with_warning'`으로
      -- rust 구현을 활성화할 수 있습니다
      --
      -- See :h blink-cmp-config-fuzzy for more information
      -- 더 많은 정보는 :h blink-cmp-config-fuzzy 참고
      fuzzy = { implementation = 'lua' },

      -- Shows a signature help window while you type arguments for a function
      -- 함수 인자를 입력하는 동안 시그니처 도움말 창을 표시합니다
      signature = { enabled = true },
    },
  },

  { -- You can easily change to a different colorscheme.
  -- 다른 컬러 스킴으로 쉽게 변경할 수 있습니다.
    -- Change the name of the colorscheme plugin below, and then
    -- 아래 컬러 스킴 플러그인 이름을 변경하고,
    -- change the command in the config to whatever the name of that colorscheme is.
    -- config의 명령도 해당 컬러 스킴 이름으로 변경하세요.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    -- 이미 설치된 컬러 스킴을 보려면 `:Telescope colorscheme`를 사용하세요.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    -- priority = 1000, -- 다른 모든 시작 플러그인보다 먼저 로드되도록 합니다.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
          -- comments = { italic = false }, -- 주석의 이탤릭체를 비활성화합니다
        },
      }

      -- Load the colorscheme here.
      -- 여기서 컬러 스킴을 로드합니다.
      -- Like many other themes, this one has different styles, and you could load
      -- 다른 많은 테마처럼 이 테마도 여러 스타일이 있으며,
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      -- 'tokyonight-storm', 'tokyonight-moon', 'tokyonight-day' 등을 로드할 수 있습니다.
      vim.cmd.colorscheme 'tokyonight-night'
    end,
  },

  -- Highlight todo, notes, etc in comments
  -- 주석에서 todo, 노트 등을 하이라이트합니다
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

  { -- Collection of various small independent plugins/modules
  -- 다양하고 작은 독립적인 플러그인/모듈 모음
    'nvim-mini/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      -- 향상된 Around/Inside 텍스트 오브젝트
      --
      -- Examples:
      -- 예시:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - va)  - [)]괄호 [A]주변을 [V]시각적으로 선택
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - yinq - 다음 [Q]uote [I]안쪽을 [Y]ank
      --  - ci'  - [C]hange [I]nside [']quote
      --  - ci'  - [']quote [I]안쪽을 [C]hange
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      -- 둘러싸기(brackets, quotes 등)를 추가/삭제/교체합니다
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - saiw) - 단어 [I]안쪽에 [)]괄호 [S]둘러싸기 [A]추가
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sd'   - ['][S]둘러싸기 [D]삭제
      -- - sr)'  - [S]urround [R]eplace [)] [']
      -- - sr)'  - [)]를 [']로 [S]둘러싸기 [R]교체
      require('mini.surround').setup()

      -- Simple and easy statusline.
      -- 간단하고 쉬운 상태 표시줄입니다.
      --  You could remove this setup call if you don't like it,
      --  마음에 들지 않으면 이 setup 호출을 제거하고,
      --  and try some other statusline plugin
      --  다른 상태 표시줄 플러그인을 시도해 보세요
      local statusline = require 'mini.statusline'
      -- set use_icons to true if you have a Nerd Font
      -- Nerd Font가 있으면 use_icons를 true로 설정하세요
      statusline.setup { use_icons = vim.g.have_nerd_font }

      -- You can configure sections in the statusline by overriding their
      -- default behavior. For example, here we set the section for
      -- cursor location to LINE:COLUMN
      -- 기본 동작을 재정의하여 상태 표시줄 섹션을 설정할 수 있습니다.
      -- 예를 들어, 여기서는 커서 위치 섹션을 LINE:COLUMN으로 설정합니다
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function() return '%2l:%-2v' end

      -- ... and there is more!
      -- ... 더 많은 기능이 있습니다!
      --  Check out: https://github.com/nvim-mini/mini.nvim
    end,
  },

  { -- Highlight, edit, and navigate code
  -- 코드 하이라이트, 편집, 탐색
    'nvim-treesitter/nvim-treesitter',
    config = function()
      local filetypes = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' }
      require('nvim-treesitter').install(filetypes)
      vim.api.nvim_create_autocmd('FileType', {
        pattern = filetypes,
        callback = function() vim.treesitter.start() end,
      })
    end,
  },

  -- The following comments only work if you have downloaded the kickstart repo, not just copy pasted the
  -- init.lua. If you want these files, they are in the repository, so you can just download them and
  -- place them in the correct locations.
  -- 아래 주석은 init.lua를 복사·붙여넣기한 것이 아니라 kickstart 저장소를 다운로드한 경우에만 동작합니다.
  -- 이 파일들이 필요하다면 저장소에 있으므로 다운로드해서 올바른 위치에 배치하세요.

  -- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for Kickstart
  -- NOTE: Neovim 여정의 다음 단계: Kickstart에 추가 플러그인을 추가/설정하세요
  --
  --  Here are some example plugins that I've included in the Kickstart repository.
  --  Kickstart 저장소에 포함한 예시 플러그인들입니다.
  --  Uncomment any of the lines below to enable them (you will need to restart nvim).
  --  아래 줄의 주석을 해제하여 활성화하세요 (nvim을 재시작해야 합니다).
  --
  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
  -- require 'kickstart.plugins.autopairs',
  -- require 'kickstart.plugins.neo-tree',
  -- require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  -- NOTE: 아래 import는 `lua/custom/plugins/*.lua`에서 자신만의 플러그인, 설정 등을 자동으로 추가할 수 있습니다
  --    This is the easiest way to modularize your config.
  --    설정을 모듈화하는 가장 쉬운 방법입니다.
  --
  --  Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  --  아래 줄의 주석을 해제하고 `lua/custom/plugins/*.lua`에 플러그인을 추가하세요.
  -- { import = 'custom.plugins' },
  --
  -- For additional information with loading, sourcing and examples see `:help lazy.nvim-🔌-plugin-spec`
  -- 로딩, 소싱, 예시에 대한 추가 정보는 `:help lazy.nvim-🔌-plugin-spec` 참고
  -- Or use telescope!
  -- 또는 telescope를 사용하세요!
  -- In normal mode type `<space>sh` then write `lazy.nvim-plugin`
  -- 일반 모드에서 `<space>sh`를 입력한 후 `lazy.nvim-plugin`을 검색하세요
  -- you can continue same window with `<space>sr` which resumes last telescope search
  -- `<space>sr`로 마지막 telescope 검색을 재개할 수 있습니다
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    -- Nerd Font를 사용하는 경우: icons를 빈 테이블로 설정하면 lazy.nvim 기본 Nerd Font 아이콘이 사용됩니다.
    -- 그렇지 않으면 아래처럼 유니코드 아이콘 테이블을 정의하세요
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- 아래 줄은 `modeline`이라고 합니다. `:help modeline` 참고
-- vim: ts=2 sts=2 sw=2 et

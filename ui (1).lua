type getFontArgs__DARKLUA_TYPE_a = { font: string?, weight: Enum.FontWeight?, style: Enum.FontStyle?, size: number? }
type TweenOptions__DARKLUA_TYPE_b = {
	Time: number?,
	Style: Enum.EasingStyle?,
	Direction: Enum.EasingDirection?,
	RepeatCount: number?,
	Reverses: boolean?,
	DelayTime: number?,
}
type ToggleArgs__DARKLUA_TYPE_c = {
	Label: string,
	Desc: string?,
	Value: boolean | string,
	Values: { [string]: any }?,
	Default: boolean?,
	Callback: ((boolean) -> ())?,
}
type DropdownArgs__DARKLUA_TYPE_d = {
	Label: string,
	Desc: string?,
	Value: string?,
	Values: { [string]: any }?,
	Default: string | { string }?,
	Items: { string }?,
	Icons: { [string]: string }?,
	isMulti: boolean,
	Callback: ((any) -> ())?,
	CallBackWithIndex: boolean?,
	CallbackWithIndex: boolean?,
	Searched: boolean?,
	["Searched.Enter"]: boolean?,
	SearchedEnter: boolean?,
	ConfirmText: string?,
	ConfirmDuration: number?,
	BtnAction: ((any) -> ())?,
	BtnIcon: string?,
	BtnTooltip: string?,
}
type SliderArgs__DARKLUA_TYPE_e = {
	Label: string,
	Desc: string?,
	Value: number | string?,
	Values: { [string]: any }?,
	Default: number?,
	Min: number,
	Max: number,
	Step: number?,
	Suffix: string?,
	Callback: ((number) -> ())?,
}
type KeybindArgs__DARKLUA_TYPE_f = {
	Label: string,
	Desc: string?,
	Value: Enum.KeyCode | string?,
	Values: { [string]: any }?,
	Default: Enum.KeyCode?,
	Callback: ((Enum.KeyCode) -> ())?,
	Triggered: ((Enum.KeyCode) -> ())?,
}
type ButtonArgs__DARKLUA_TYPE_g = {
	Label: string,
	Desc: string?,
	Text: string?,
	Icon: string?,
	Tooltip: string?,
	Callback: (() -> ())?,
}
type TextboxArgs__DARKLUA_TYPE_h = {
	Label: string,
	Desc: string?,
	Value: string?,
	Values: { [string]: any }?,
	Default: string?,
	Placeholder: string?,
	ConfirmText: string?,
	ConfirmDuration: number?,
	Callback: ((string) -> ())?,
}
type SeparatorArgs__DARKLUA_TYPE_i = { Thickness: number?, Color: Color3?, PaddingLeft: number?, PaddingRight: number? }
type LabelArgs__DARKLUA_TYPE_j = {
	Text: string,
	Desc: string?,
	Color: Color3?,
	Font: string?,
	Weight: Enum.FontWeight?,
	Style: Enum.FontStyle?,
	Size: number?,
	RichText: boolean?,
	TextXAlignment: Enum.TextXAlignment?,
	Gradient: (ColorSequence | string)?,
	AnimateGradient: boolean?,
	AnimationSpeed: number?,
	AnimationType: ("Shift" | "Rotate" | "RainbowHue")?,
}
type ControllerCallback__DARKLUA_TYPE_k = (any) -> ()
type ChipSelectArgs__DARKLUA_TYPE_l = {
	Label: string,
	Desc: string?,
	Value: string?,
	Values: { [string]: any }?,
	Default: (string | { string })?,
	Items: { string }?,
	isMulti: boolean?,
	Callback: ((any) -> ())?,
	FullWidth: boolean?,
	Wrapped: boolean?,
}
type DragListItemObject__DARKLUA_TYPE_m = { Title: string, Number: number? }
type DragListItem__DARKLUA_TYPE_n = string | DragListItemObject__DARKLUA_TYPE_m
type DragListArgs__DARKLUA_TYPE_o = {
	Label: string,
	Desc: string?,
	Value: string?,
	Values: { [string]: any }?,
	Default: { DragListItem__DARKLUA_TYPE_n },
	Callback: (({ any }) -> ())?,
	External: { DragListItem__DARKLUA_TYPE_n }?,
	HasNumber: boolean?,
	MinNumber: number?,
	MaxNumber: number?,
	DefaultNumber: number?,
}
type ControllerCallback__DARKLUA_TYPE_p = (string) -> ()
type MultiButtonArgs__DARKLUA_TYPE_q = {
	Label: string,
	Desc: string?,
	Items: { string | { Text: string, Callback: (() -> ())? } }?,
	Callback: ((string) -> ())?,
	FullWidth: boolean?,
	Wrapped: boolean?,
}
type ManyArgs__DARKLUA_TYPE_r = { Label: string, Desc: string?, Layout: ("Stack" | "Horizontal" | "Row")? }
type SectionOptions__DARKLUA_TYPE_s = { Side: ("Left" | "Right")?, Row: number?, FullWidth: boolean? }
type PageOptions__DARKLUA_TYPE_t = { Columns: number? }

local a

a = {
	cache = {},
	load = function(b)
		if not a.cache[b] then
			a.cache[b] = {
				c = a[b](),
			}
		end

		return a.cache[b].c
	end,
}

do
	function a.a()
		local b = setthreadidentity or set_thread_identity or setidentity or setthreadcontext

		return function<T>(c: string, d: { [string]: any }): T
			if b then
				pcall(b, 8)
			end

			local e = Instance.new(c)

			for f, g in pairs(d) do
				(e :: any)[f] = g
			end

			return e :: any
		end
	end
	function a.b()
		local b = {
			AccentColor = Color3.fromRGB(204, 102, 51),
			AccentHoverColor = Color3.fromRGB(232, 228, 220),
			PrimaryColor = Color3.fromHex("#08080A"),
			PrimaryHoverColor = Color3.fromHex("#252529"),
			SecondaryColor = Color3.fromHex("#121214"),
			SecondaryHoverColor = Color3.fromHex("#29292D"),
			TextColor = Color3.fromRGB(212, 208, 200),
			TextMutedColor = Color3.fromRGB(145, 145, 145),
			GradientTop = Color3.fromHex("#151517"),
			GradientBottom = Color3.fromHex("#08080A"),
			GroupColor = Color3.fromHex("#18181B"),
			BorderColor = Color3.fromHex("#36363B"),
			SuccessColor = Color3.fromRGB(40, 200, 64),
			ErrorColor = Color3.fromRGB(224, 85, 85),
			BackgroundColor = Color3.fromHex("#08080A"),
			CardBackgroundColor = Color3.fromHex("#222225"),
			White = Color3.fromRGB(255, 255, 255),
		}

		return b
	end
	function a.c()
		local b = {}

		function b.initFont(c: string?)
			local d = "Montserrat"

			if c then
				d = c
			end

			return "rbxasset://fonts/families/" .. d .. ".json"
		end

		return b
	end
	function a.d()
		local b = a.load("b")
		local c = a.load("c")
		local d = {}

		d.Theme = b
		d.Spacing = {
			Content = 12,
			CompactContent = 12,
			Sections = 12,
			CompactSections = 12,
			Columns = 10,
			SectionHeader = 6,
			RowX = 12,
			RowY = 8,
			Description = 4,
			Control = 8,
			Divider = 1,
			TouchTarget = 44,
		}
		d.Motion = {
			Interaction = 0.12,
			Transition = 0.16,
			Drag = 0.04,
			ModalOpen = 0.12,
			ModalClose = 0.09,
		}
		d.Layout = {
			Sidebar = 52,
			TwoColumns = 480,
			Compact = 480,
			ViewportMargin = 12,
		}
		d.Surface = {
			Main = 0.02,
			Group = 0.02,
			Border = 0.15,
			Radius = 20,
			WindowRadius = 24,
			ModalRadius = 24,
			ControlRadius = 12,
			Glass = 0.35,
		}
		d.Fonts = {
			Header = {
				Font = c.initFont(),
				Weight = Enum.FontWeight.ExtraBold,
				Style = Enum.FontStyle.Normal,
				Size = 14,
			},
			Body = {
				Font = c.initFont(),
				Weight = Enum.FontWeight.Bold,
				Style = Enum.FontStyle.Normal,
				Size = 13,
			},
		}

		function d.getFont(e: string)
			return d.Fonts[e]
		end
		function d.customFont(e: getFontArgs__DARKLUA_TYPE_a)
			local f = e.font or "RobotoMono"
			local g = e.weight or Enum.FontWeight.Medium
			local h = e.style or Enum.FontStyle.Normal
			local i = e.size or 18

			return {
				Font = c.initFont(f),
				Weight = g,
				Style = h,
				Size = i,
			}
		end

		return d
	end
	function a.e()
		return {
			Width = 580,
			Height = 440,
			MobileWidth = 480,
		}
	end
	function a.f()
		local b = {}

		function b.LayoutScale(c)
			local d = 1
			local e = c

			while e do
				local f = e:FindFirstChildOfClass("UIScale")

				if f then
					d *= f.Scale
				end

				e = e.Parent
			end

			return math.max(0.001, d)
		end
		function b.TouchTarget(c, d)
			if not game:GetService("UserInputService").TouchEnabled then
				return
			end

			local e = Instance.new("Folder")

			e.Name = "TouchTargetFolder"
			e.Parent = c

			local f = Instance.new("TextButton")

			f.Name = "TouchTarget"
			f.Size = UDim2.fromOffset(math.max(44, c.Size.X.Offset), math.max(44, c.Size.Y.Offset))
			f.AnchorPoint = Vector2.new(0.5, 0.5)
			f.Position = UDim2.fromScale(0.5, 0.5)
			f.BackgroundTransparency = 1
			f.Text = ""
			f.ZIndex = c.ZIndex + 1
			f.Parent = e

			local function resize()
				local g = b.LayoutScale(c)

				f.Size = UDim2.fromOffset(math.max(44, c.AbsoluteSize.X / g), math.max(44, c.AbsoluteSize.Y / g))
			end

			c:GetPropertyChangedSignal("AbsoluteSize"):Connect(resize)
			resize()
			f.Activated:Connect(d)

			return f
		end
		function b.Corner(c: number, d: Instance): UICorner
			local e = Instance.new("UICorner", d)

			e.CornerRadius = UDim.new(0, c)

			return e
		end
		function b.Stroke(c: number, d: Color3, e: Instance): UIStroke
			local f = Instance.new("UIStroke", e)

			f.Thickness = c
			f.Color = d

			return f
		end
		function b.FullPadding(c: number, d: Instance): UIPadding
			local e = Instance.new("UIPadding", d)

			e.PaddingBottom = UDim.new(0, c)
			e.PaddingLeft = UDim.new(0, c)
			e.PaddingRight = UDim.new(0, c)
			e.PaddingTop = UDim.new(0, c)

			return e
		end
		function b.XPadding(c: number, d: Instance): UIPadding
			local e = Instance.new("UIPadding", d)

			e.PaddingLeft = UDim.new(0, c)
			e.PaddingRight = UDim.new(0, c)

			return e
		end
		function b.Padding(c: number, d: number, e: number, f: number, g: Instance): UIPadding
			local h = Instance.new("UIPadding", g)

			h.PaddingTop = UDim.new(0, c)
			h.PaddingBottom = UDim.new(0, d)
			h.PaddingLeft = UDim.new(0, e)
			h.PaddingRight = UDim.new(0, f)

			return h
		end
		function b.YPadding(c: number, d: Instance): UIPadding
			local e = Instance.new("UIPadding", d)

			e.PaddingBottom = UDim.new(0, c)
			e.PaddingTop = UDim.new(0, c)

			return e
		end
		function b.ListLayout(c: number, d: Enum.FillDirection, e: Instance)
			local f = Instance.new("UIListLayout", e)

			f.FillDirection = d
			f.Padding = UDim.new(0, c)
			f.SortOrder = Enum.SortOrder.LayoutOrder

			return f
		end
		function b.Space(c: "x" | "y", d: number, e: Instance)
			if c == "x" then
				d = UDim2.fromOffset(d, 1)
			else
				d = UDim2.fromOffset(1, d)
			end

			local f = Instance.new("Frame", e)

			f.Size = d
			f.BackgroundTransparency = 1

			return f
		end

		return b
	end
	function a.g()
		local b = game:GetService("TweenService")
		local c = a.load("d")
		local d = {}
		local e = setmetatable({}, {
			__mode = "k",
		})

		function d.Play(f: Instance, g: { [string]: any }, h: TweenOptions__DARKLUA_TYPE_b?)
			local i = h or {}
			local j = e[f] or {}

			e[f] = j

			for k in pairs(g) do
				if j[k] then
					j[k]:Cancel()
				end
			end

			local k = TweenInfo.new(
				i.Time or c.Motion.Interaction,
				i.Style or Enum.EasingStyle.Quad,
				i.Direction or Enum.EasingDirection.Out,
				i.RepeatCount or 0,
				i.Reverses or false,
				i.DelayTime or 0
			)
			local l = b:Create(f, k, g)

			for m in pairs(g) do
				j[m] = l
			end

			l.Completed:Once(function()
				for m in pairs(g) do
					if j[m] == l then
						j[m] = nil
					end
				end
			end)
			l:Play()

			return l
		end

		return d
	end
	function a.h()
		return {
			["lucide-accessibility"] = "rbxassetid://10709751939",
			["lucide-activity"] = "rbxassetid://10709752035",
			["lucide-air-vent"] = "rbxassetid://10709752131",
			["lucide-airplay"] = "rbxassetid://10709752254",
			["lucide-alarm-check"] = "rbxassetid://10709752405",
			["lucide-alarm-clock"] = "rbxassetid://10709752630",
			["lucide-alarm-clock-off"] = "rbxassetid://10709752508",
			["lucide-alarm-minus"] = "rbxassetid://10709752732",
			["lucide-alarm-plus"] = "rbxassetid://10709752825",
			["lucide-album"] = "rbxassetid://10709752906",
			["lucide-alert-circle"] = "rbxassetid://10709752996",
			["lucide-alert-octagon"] = "rbxassetid://10709753064",
			["lucide-alert-triangle"] = "rbxassetid://10709753149",
			["lucide-align-center"] = "rbxassetid://10709753570",
			["lucide-align-center-horizontal"] = "rbxassetid://10709753272",
			["lucide-align-center-vertical"] = "rbxassetid://10709753421",
			["lucide-align-end-horizontal"] = "rbxassetid://10709753692",
			["lucide-align-end-vertical"] = "rbxassetid://10709753808",
			["lucide-align-horizontal-distribute-center"] = "rbxassetid://10747779791",
			["lucide-align-horizontal-distribute-end"] = "rbxassetid://10747784534",
			["lucide-align-horizontal-distribute-start"] = "rbxassetid://10709754118",
			["lucide-align-horizontal-justify-center"] = "rbxassetid://10709754204",
			["lucide-align-horizontal-justify-end"] = "rbxassetid://10709754317",
			["lucide-align-horizontal-justify-start"] = "rbxassetid://10709754436",
			["lucide-align-horizontal-space-around"] = "rbxassetid://10709754590",
			["lucide-align-horizontal-space-between"] = "rbxassetid://10709754749",
			["lucide-align-justify"] = "rbxassetid://10709759610",
			["lucide-align-left"] = "rbxassetid://10709759764",
			["lucide-align-right"] = "rbxassetid://10709759895",
			["lucide-align-start-horizontal"] = "rbxassetid://10709760051",
			["lucide-align-start-vertical"] = "rbxassetid://10709760244",
			["lucide-align-vertical-distribute-center"] = "rbxassetid://10709760351",
			["lucide-align-vertical-distribute-end"] = "rbxassetid://10709760434",
			["lucide-align-vertical-distribute-start"] = "rbxassetid://10709760612",
			["lucide-align-vertical-justify-center"] = "rbxassetid://10709760814",
			["lucide-align-vertical-justify-end"] = "rbxassetid://10709761003",
			["lucide-align-vertical-justify-start"] = "rbxassetid://10709761176",
			["lucide-align-vertical-space-around"] = "rbxassetid://10709761324",
			["lucide-align-vertical-space-between"] = "rbxassetid://10709761434",
			["lucide-anchor"] = "rbxassetid://10709761530",
			["lucide-angry"] = "rbxassetid://10709761629",
			["lucide-annoyed"] = "rbxassetid://10709761722",
			["lucide-aperture"] = "rbxassetid://10709761813",
			["lucide-apple"] = "rbxassetid://10709761889",
			["lucide-archive"] = "rbxassetid://10709762233",
			["lucide-archive-restore"] = "rbxassetid://10709762058",
			["lucide-armchair"] = "rbxassetid://10709762327",
			["lucide-arrow-big-down"] = "rbxassetid://10747796644",
			["lucide-arrow-big-left"] = "rbxassetid://10709762574",
			["lucide-arrow-big-right"] = "rbxassetid://10709762727",
			["lucide-arrow-big-up"] = "rbxassetid://10709762879",
			["lucide-arrow-down"] = "rbxassetid://10709767827",
			["lucide-arrow-down-circle"] = "rbxassetid://10709763034",
			["lucide-arrow-down-left"] = "rbxassetid://10709767656",
			["lucide-arrow-down-right"] = "rbxassetid://10709767750",
			["lucide-arrow-left"] = "rbxassetid://10709768114",
			["lucide-arrow-left-circle"] = "rbxassetid://10709767936",
			["lucide-arrow-left-right"] = "rbxassetid://10709768019",
			["lucide-arrow-right"] = "rbxassetid://10709768347",
			["lucide-arrow-right-circle"] = "rbxassetid://10709768226",
			["lucide-arrow-up"] = "rbxassetid://10709768939",
			["lucide-arrow-up-circle"] = "rbxassetid://10709768432",
			["lucide-arrow-up-down"] = "rbxassetid://10709768538",
			["lucide-arrow-up-left"] = "rbxassetid://10709768661",
			["lucide-arrow-up-right"] = "rbxassetid://10709768787",
			["lucide-asterisk"] = "rbxassetid://10709769095",
			["lucide-at-sign"] = "rbxassetid://10709769286",
			["lucide-award"] = "rbxassetid://10709769406",
			["lucide-axe"] = "rbxassetid://10709769508",
			["lucide-axis-3d"] = "rbxassetid://10709769598",
			["lucide-baby"] = "rbxassetid://10709769732",
			["lucide-backpack"] = "rbxassetid://10709769841",
			["lucide-baggage-claim"] = "rbxassetid://10709769935",
			["lucide-banana"] = "rbxassetid://10709770005",
			["lucide-banknote"] = "rbxassetid://10709770178",
			["lucide-bar-chart"] = "rbxassetid://10709773755",
			["lucide-bar-chart-2"] = "rbxassetid://10709770317",
			["lucide-bar-chart-3"] = "rbxassetid://10709770431",
			["lucide-bar-chart-4"] = "rbxassetid://10709770560",
			["lucide-bar-chart-horizontal"] = "rbxassetid://10709773669",
			["lucide-barcode"] = "rbxassetid://10747360675",
			["lucide-baseline"] = "rbxassetid://10709773863",
			["lucide-bath"] = "rbxassetid://10709773963",
			["lucide-battery"] = "rbxassetid://10709774640",
			["lucide-battery-charging"] = "rbxassetid://10709774068",
			["lucide-battery-full"] = "rbxassetid://10709774206",
			["lucide-battery-low"] = "rbxassetid://10709774370",
			["lucide-battery-medium"] = "rbxassetid://10709774513",
			["lucide-beaker"] = "rbxassetid://10709774756",
			["lucide-bed"] = "rbxassetid://10709775036",
			["lucide-bed-double"] = "rbxassetid://10709774864",
			["lucide-bed-single"] = "rbxassetid://10709774968",
			["lucide-beer"] = "rbxassetid://10709775167",
			["lucide-bell"] = "rbxassetid://10709775704",
			["lucide-bell-minus"] = "rbxassetid://10709775241",
			["lucide-bell-off"] = "rbxassetid://10709775320",
			["lucide-bell-plus"] = "rbxassetid://10709775448",
			["lucide-bell-ring"] = "rbxassetid://10709775560",
			["lucide-bike"] = "rbxassetid://10709775894",
			["lucide-binary"] = "rbxassetid://10709776050",
			["lucide-bitcoin"] = "rbxassetid://10709776126",
			["lucide-bluetooth"] = "rbxassetid://10709776655",
			["lucide-bluetooth-connected"] = "rbxassetid://10709776240",
			["lucide-bluetooth-off"] = "rbxassetid://10709776344",
			["lucide-bluetooth-searching"] = "rbxassetid://10709776501",
			["lucide-bold"] = "rbxassetid://10747813908",
			["lucide-bomb"] = "rbxassetid://10709781460",
			["lucide-bone"] = "rbxassetid://10709781605",
			["lucide-book"] = "rbxassetid://10709781824",
			["lucide-book-open"] = "rbxassetid://10709781717",
			["lucide-bookmark"] = "rbxassetid://10709782154",
			["lucide-bookmark-minus"] = "rbxassetid://10709781919",
			["lucide-bookmark-plus"] = "rbxassetid://10709782044",
			["lucide-bot"] = "rbxassetid://10709782230",
			["lucide-box"] = "rbxassetid://10709782497",
			["lucide-box-select"] = "rbxassetid://10709782342",
			["lucide-boxes"] = "rbxassetid://10709782582",
			["lucide-briefcase"] = "rbxassetid://10709782662",
			["lucide-brush"] = "rbxassetid://10709782758",
			["lucide-bug"] = "rbxassetid://10709782845",
			["lucide-building"] = "rbxassetid://10709783051",
			["lucide-building-2"] = "rbxassetid://10709782939",
			["lucide-bus"] = "rbxassetid://10709783137",
			["lucide-cake"] = "rbxassetid://10709783217",
			["lucide-calculator"] = "rbxassetid://10709783311",
			["lucide-calendar"] = "rbxassetid://10709789505",
			["lucide-calendar-check"] = "rbxassetid://10709783474",
			["lucide-calendar-check-2"] = "rbxassetid://10709783392",
			["lucide-calendar-clock"] = "rbxassetid://10709783577",
			["lucide-calendar-days"] = "rbxassetid://10709783673",
			["lucide-calendar-heart"] = "rbxassetid://10709783835",
			["lucide-calendar-minus"] = "rbxassetid://10709783959",
			["lucide-calendar-off"] = "rbxassetid://10709788784",
			["lucide-calendar-plus"] = "rbxassetid://10709788937",
			["lucide-calendar-range"] = "rbxassetid://10709789053",
			["lucide-calendar-search"] = "rbxassetid://10709789200",
			["lucide-calendar-x"] = "rbxassetid://10709789407",
			["lucide-calendar-x-2"] = "rbxassetid://10709789329",
			["lucide-camera"] = "rbxassetid://10709789686",
			["lucide-camera-off"] = "rbxassetid://10747822677",
			["lucide-car"] = "rbxassetid://10709789810",
			["lucide-carrot"] = "rbxassetid://10709789960",
			["lucide-cast"] = "rbxassetid://10709790097",
			["lucide-charge"] = "rbxassetid://10709790202",
			["lucide-check"] = "rbxassetid://10709790644",
			["lucide-check-circle"] = "rbxassetid://10709790387",
			["lucide-check-circle-2"] = "rbxassetid://10709790298",
			["lucide-check-square"] = "rbxassetid://10709790537",
			["lucide-chef-hat"] = "rbxassetid://10709790757",
			["lucide-cherry"] = "rbxassetid://10709790875",
			["lucide-chevron-down"] = "rbxassetid://10709790948",
			["lucide-chevron-first"] = "rbxassetid://10709791015",
			["lucide-chevron-last"] = "rbxassetid://10709791130",
			["lucide-chevron-left"] = "rbxassetid://10709791281",
			["lucide-chevron-right"] = "rbxassetid://10709791437",
			["lucide-chevron-up"] = "rbxassetid://10709791523",
			["lucide-chevrons-down"] = "rbxassetid://10709796864",
			["lucide-chevrons-down-up"] = "rbxassetid://10709791632",
			["lucide-chevrons-left"] = "rbxassetid://10709797151",
			["lucide-chevrons-left-right"] = "rbxassetid://10709797006",
			["lucide-chevrons-right"] = "rbxassetid://10709797382",
			["lucide-chevrons-right-left"] = "rbxassetid://10709797274",
			["lucide-chevrons-up"] = "rbxassetid://10709797622",
			["lucide-chevrons-up-down"] = "rbxassetid://10709797508",
			["lucide-chrome"] = "rbxassetid://10709797725",
			["lucide-circle"] = "rbxassetid://10709798174",
			["lucide-circle-dot"] = "rbxassetid://10709797837",
			["lucide-circle-ellipsis"] = "rbxassetid://10709797985",
			["lucide-circle-slashed"] = "rbxassetid://10709798100",
			["lucide-citrus"] = "rbxassetid://10709798276",
			["lucide-clapperboard"] = "rbxassetid://10709798350",
			["lucide-clipboard"] = "rbxassetid://10709799288",
			["lucide-clipboard-check"] = "rbxassetid://10709798443",
			["lucide-clipboard-copy"] = "rbxassetid://10709798574",
			["lucide-clipboard-edit"] = "rbxassetid://10709798682",
			["lucide-clipboard-list"] = "rbxassetid://10709798792",
			["lucide-clipboard-signature"] = "rbxassetid://10709798890",
			["lucide-clipboard-type"] = "rbxassetid://10709798999",
			["lucide-clipboard-x"] = "rbxassetid://10709799124",
			["lucide-clock"] = "rbxassetid://10709805144",
			["lucide-clock-1"] = "rbxassetid://10709799535",
			["lucide-clock-10"] = "rbxassetid://10709799718",
			["lucide-clock-11"] = "rbxassetid://10709799818",
			["lucide-clock-12"] = "rbxassetid://10709799962",
			["lucide-clock-2"] = "rbxassetid://10709803876",
			["lucide-clock-3"] = "rbxassetid://10709803989",
			["lucide-clock-4"] = "rbxassetid://10709804164",
			["lucide-clock-5"] = "rbxassetid://10709804291",
			["lucide-clock-6"] = "rbxassetid://10709804435",
			["lucide-clock-7"] = "rbxassetid://10709804599",
			["lucide-clock-8"] = "rbxassetid://10709804784",
			["lucide-clock-9"] = "rbxassetid://10709804996",
			["lucide-cloud"] = "rbxassetid://10709806740",
			["lucide-cloud-cog"] = "rbxassetid://10709805262",
			["lucide-cloud-drizzle"] = "rbxassetid://10709805371",
			["lucide-cloud-fog"] = "rbxassetid://10709805477",
			["lucide-cloud-hail"] = "rbxassetid://10709805596",
			["lucide-cloud-lightning"] = "rbxassetid://10709805727",
			["lucide-cloud-moon"] = "rbxassetid://10709805942",
			["lucide-cloud-moon-rain"] = "rbxassetid://10709805838",
			["lucide-cloud-off"] = "rbxassetid://10709806060",
			["lucide-cloud-rain"] = "rbxassetid://10709806277",
			["lucide-cloud-rain-wind"] = "rbxassetid://10709806166",
			["lucide-cloud-snow"] = "rbxassetid://10709806374",
			["lucide-cloud-sun"] = "rbxassetid://10709806631",
			["lucide-cloud-sun-rain"] = "rbxassetid://10709806475",
			["lucide-cloudy"] = "rbxassetid://10709806859",
			["lucide-clover"] = "rbxassetid://10709806995",
			["lucide-code"] = "rbxassetid://10709810463",
			["lucide-code-2"] = "rbxassetid://10709807111",
			["lucide-codepen"] = "rbxassetid://10709810534",
			["lucide-codesandbox"] = "rbxassetid://10709810676",
			["lucide-coffee"] = "rbxassetid://10709810814",
			["lucide-cog"] = "rbxassetid://10709810948",
			["lucide-coins"] = "rbxassetid://10709811110",
			["lucide-columns"] = "rbxassetid://10709811261",
			["lucide-command"] = "rbxassetid://10709811365",
			["lucide-compass"] = "rbxassetid://10709811445",
			["lucide-component"] = "rbxassetid://10709811595",
			["lucide-concierge-bell"] = "rbxassetid://10709811706",
			["lucide-connection"] = "rbxassetid://10747361219",
			["lucide-contact"] = "rbxassetid://10709811834",
			["lucide-contrast"] = "rbxassetid://10709811939",
			["lucide-cookie"] = "rbxassetid://10709812067",
			["lucide-copy"] = "rbxassetid://10709812159",
			["lucide-copyleft"] = "rbxassetid://10709812251",
			["lucide-copyright"] = "rbxassetid://10709812311",
			["lucide-corner-down-left"] = "rbxassetid://10709812396",
			["lucide-corner-down-right"] = "rbxassetid://10709812485",
			["lucide-corner-left-down"] = "rbxassetid://10709812632",
			["lucide-corner-left-up"] = "rbxassetid://10709812784",
			["lucide-corner-right-down"] = "rbxassetid://10709812939",
			["lucide-corner-right-up"] = "rbxassetid://10709813094",
			["lucide-corner-up-left"] = "rbxassetid://10709813185",
			["lucide-corner-up-right"] = "rbxassetid://10709813281",
			["lucide-cpu"] = "rbxassetid://10709813383",
			["lucide-croissant"] = "rbxassetid://10709818125",
			["lucide-crop"] = "rbxassetid://10709818245",
			["lucide-cross"] = "rbxassetid://10709818399",
			["lucide-crosshair"] = "rbxassetid://10709818534",
			["lucide-crown"] = "rbxassetid://10709818626",
			["lucide-cup-soda"] = "rbxassetid://10709818763",
			["lucide-curly-braces"] = "rbxassetid://10709818847",
			["lucide-currency"] = "rbxassetid://10709818931",
			["lucide-database"] = "rbxassetid://10709818996",
			["lucide-delete"] = "rbxassetid://10709819059",
			["lucide-diamond"] = "rbxassetid://10709819149",
			["lucide-dice-1"] = "rbxassetid://10709819266",
			["lucide-dice-2"] = "rbxassetid://10709819361",
			["lucide-dice-3"] = "rbxassetid://10709819508",
			["lucide-dice-4"] = "rbxassetid://10709819670",
			["lucide-dice-5"] = "rbxassetid://10709819801",
			["lucide-dice-6"] = "rbxassetid://10709819896",
			["lucide-dices"] = "rbxassetid://10723343321",
			["lucide-diff"] = "rbxassetid://10723343416",
			["lucide-disc"] = "rbxassetid://10723343537",
			["lucide-divide"] = "rbxassetid://10723343805",
			["lucide-divide-circle"] = "rbxassetid://10723343636",
			["lucide-divide-square"] = "rbxassetid://10723343737",
			["lucide-dollar-sign"] = "rbxassetid://10723343958",
			["lucide-download"] = "rbxassetid://10723344270",
			["lucide-download-cloud"] = "rbxassetid://10723344088",
			["lucide-droplet"] = "rbxassetid://10723344432",
			["lucide-droplets"] = "rbxassetid://10734883356",
			["lucide-drumstick"] = "rbxassetid://10723344737",
			["lucide-edit"] = "rbxassetid://10734883598",
			["lucide-edit-2"] = "rbxassetid://10723344885",
			["lucide-edit-3"] = "rbxassetid://10723345088",
			["lucide-egg"] = "rbxassetid://10723345518",
			["lucide-egg-fried"] = "rbxassetid://10723345347",
			["lucide-electricity"] = "rbxassetid://10723345749",
			["lucide-electricity-off"] = "rbxassetid://10723345643",
			["lucide-equal"] = "rbxassetid://10723345990",
			["lucide-equal-not"] = "rbxassetid://10723345866",
			["lucide-eraser"] = "rbxassetid://10723346158",
			["lucide-euro"] = "rbxassetid://10723346372",
			["lucide-expand"] = "rbxassetid://10723346553",
			["lucide-external-link"] = "rbxassetid://10723346684",
			["lucide-eye"] = "rbxassetid://10723346959",
			["lucide-eye-off"] = "rbxassetid://10723346871",
			["lucide-factory"] = "rbxassetid://10723347051",
			["lucide-fan"] = "rbxassetid://10723354359",
			["lucide-fast-forward"] = "rbxassetid://10723354521",
			["lucide-feather"] = "rbxassetid://10723354671",
			["lucide-figma"] = "rbxassetid://10723354801",
			["lucide-file"] = "rbxassetid://10723374641",
			["lucide-file-archive"] = "rbxassetid://10723354921",
			["lucide-file-audio"] = "rbxassetid://10723355148",
			["lucide-file-audio-2"] = "rbxassetid://10723355026",
			["lucide-file-axis-3d"] = "rbxassetid://10723355272",
			["lucide-file-badge"] = "rbxassetid://10723355622",
			["lucide-file-badge-2"] = "rbxassetid://10723355451",
			["lucide-file-bar-chart"] = "rbxassetid://10723355887",
			["lucide-file-bar-chart-2"] = "rbxassetid://10723355746",
			["lucide-file-box"] = "rbxassetid://10723355989",
			["lucide-file-check"] = "rbxassetid://10723356210",
			["lucide-file-check-2"] = "rbxassetid://10723356100",
			["lucide-file-clock"] = "rbxassetid://10723356329",
			["lucide-file-code"] = "rbxassetid://10723356507",
			["lucide-file-cog"] = "rbxassetid://10723356830",
			["lucide-file-cog-2"] = "rbxassetid://10723356676",
			["lucide-file-diff"] = "rbxassetid://10723357039",
			["lucide-file-digit"] = "rbxassetid://10723357151",
			["lucide-file-down"] = "rbxassetid://10723357322",
			["lucide-file-edit"] = "rbxassetid://10723357495",
			["lucide-file-heart"] = "rbxassetid://10723357637",
			["lucide-file-image"] = "rbxassetid://10723357790",
			["lucide-file-input"] = "rbxassetid://10723357933",
			["lucide-file-json"] = "rbxassetid://10723364435",
			["lucide-file-json-2"] = "rbxassetid://10723364361",
			["lucide-file-key"] = "rbxassetid://10723364605",
			["lucide-file-key-2"] = "rbxassetid://10723364515",
			["lucide-file-line-chart"] = "rbxassetid://10723364725",
			["lucide-file-lock"] = "rbxassetid://10723364957",
			["lucide-file-lock-2"] = "rbxassetid://10723364861",
			["lucide-file-minus"] = "rbxassetid://10723365254",
			["lucide-file-minus-2"] = "rbxassetid://10723365086",
			["lucide-file-output"] = "rbxassetid://10723365457",
			["lucide-file-pie-chart"] = "rbxassetid://10723365598",
			["lucide-file-plus"] = "rbxassetid://10723365877",
			["lucide-file-plus-2"] = "rbxassetid://10723365766",
			["lucide-file-question"] = "rbxassetid://10723365987",
			["lucide-file-scan"] = "rbxassetid://10723366167",
			["lucide-file-search"] = "rbxassetid://10723366550",
			["lucide-file-search-2"] = "rbxassetid://10723366340",
			["lucide-file-signature"] = "rbxassetid://10723366741",
			["lucide-file-spreadsheet"] = "rbxassetid://10723366962",
			["lucide-file-symlink"] = "rbxassetid://10723367098",
			["lucide-file-terminal"] = "rbxassetid://10723367244",
			["lucide-file-text"] = "rbxassetid://10723367380",
			["lucide-file-type"] = "rbxassetid://10723367606",
			["lucide-file-type-2"] = "rbxassetid://10723367509",
			["lucide-file-up"] = "rbxassetid://10723367734",
			["lucide-file-video"] = "rbxassetid://10723373884",
			["lucide-file-video-2"] = "rbxassetid://10723367834",
			["lucide-file-volume"] = "rbxassetid://10723374172",
			["lucide-file-volume-2"] = "rbxassetid://10723374030",
			["lucide-file-warning"] = "rbxassetid://10723374276",
			["lucide-file-x"] = "rbxassetid://10723374544",
			["lucide-file-x-2"] = "rbxassetid://10723374378",
			["lucide-files"] = "rbxassetid://10723374759",
			["lucide-film"] = "rbxassetid://10723374981",
			["lucide-filter"] = "rbxassetid://10723375128",
			["lucide-fingerprint"] = "rbxassetid://10723375250",
			["lucide-flag"] = "rbxassetid://10723375890",
			["lucide-flag-off"] = "rbxassetid://10723375443",
			["lucide-flag-triangle-left"] = "rbxassetid://10723375608",
			["lucide-flag-triangle-right"] = "rbxassetid://10723375727",
			["lucide-flame"] = "rbxassetid://10723376114",
			["lucide-flashlight"] = "rbxassetid://10723376471",
			["lucide-flashlight-off"] = "rbxassetid://10723376365",
			["lucide-flask-conical"] = "rbxassetid://10734883986",
			["lucide-flask-round"] = "rbxassetid://10723376614",
			["lucide-flip-horizontal"] = "rbxassetid://10723376884",
			["lucide-flip-horizontal-2"] = "rbxassetid://10723376745",
			["lucide-flip-vertical"] = "rbxassetid://10723377138",
			["lucide-flip-vertical-2"] = "rbxassetid://10723377026",
			["lucide-flower"] = "rbxassetid://10747830374",
			["lucide-flower-2"] = "rbxassetid://10723377305",
			["lucide-focus"] = "rbxassetid://10723377537",
			["lucide-folder"] = "rbxassetid://10723387563",
			["lucide-folder-archive"] = "rbxassetid://10723384478",
			["lucide-folder-check"] = "rbxassetid://10723384605",
			["lucide-folder-clock"] = "rbxassetid://10723384731",
			["lucide-folder-closed"] = "rbxassetid://10723384893",
			["lucide-folder-cog"] = "rbxassetid://10723385213",
			["lucide-folder-cog-2"] = "rbxassetid://10723385036",
			["lucide-folder-down"] = "rbxassetid://10723385338",
			["lucide-folder-edit"] = "rbxassetid://10723385445",
			["lucide-folder-heart"] = "rbxassetid://10723385545",
			["lucide-folder-input"] = "rbxassetid://10723385721",
			["lucide-folder-key"] = "rbxassetid://10723385848",
			["lucide-folder-lock"] = "rbxassetid://10723386005",
			["lucide-folder-minus"] = "rbxassetid://10723386127",
			["lucide-folder-open"] = "rbxassetid://10723386277",
			["lucide-folder-output"] = "rbxassetid://10723386386",
			["lucide-folder-plus"] = "rbxassetid://10723386531",
			["lucide-folder-search"] = "rbxassetid://10723386787",
			["lucide-folder-search-2"] = "rbxassetid://10723386674",
			["lucide-folder-symlink"] = "rbxassetid://10723386930",
			["lucide-folder-tree"] = "rbxassetid://10723387085",
			["lucide-folder-up"] = "rbxassetid://10723387265",
			["lucide-folder-x"] = "rbxassetid://10723387448",
			["lucide-folders"] = "rbxassetid://10723387721",
			["lucide-form-input"] = "rbxassetid://10723387841",
			["lucide-forward"] = "rbxassetid://10723388016",
			["lucide-frame"] = "rbxassetid://10723394389",
			["lucide-framer"] = "rbxassetid://10723394565",
			["lucide-frown"] = "rbxassetid://10723394681",
			["lucide-fuel"] = "rbxassetid://10723394846",
			["lucide-function-square"] = "rbxassetid://10723395041",
			["lucide-gamepad"] = "rbxassetid://10723395457",
			["lucide-gamepad-2"] = "rbxassetid://10723395215",
			["lucide-gauge"] = "rbxassetid://10723395708",
			["lucide-gavel"] = "rbxassetid://10723395896",
			["lucide-gem"] = "rbxassetid://10723396000",
			["lucide-ghost"] = "rbxassetid://10723396107",
			["lucide-gift"] = "rbxassetid://10723396402",
			["lucide-gift-card"] = "rbxassetid://10723396225",
			["lucide-git-branch"] = "rbxassetid://10723396676",
			["lucide-git-branch-plus"] = "rbxassetid://10723396542",
			["lucide-git-commit"] = "rbxassetid://10723396812",
			["lucide-git-compare"] = "rbxassetid://10723396954",
			["lucide-git-fork"] = "rbxassetid://10723397049",
			["lucide-git-merge"] = "rbxassetid://10723397165",
			["lucide-git-pull-request"] = "rbxassetid://10723397431",
			["lucide-git-pull-request-closed"] = "rbxassetid://10723397268",
			["lucide-git-pull-request-draft"] = "rbxassetid://10734884302",
			["lucide-glass"] = "rbxassetid://10723397788",
			["lucide-glass-2"] = "rbxassetid://10723397529",
			["lucide-glass-water"] = "rbxassetid://10723397678",
			["lucide-glasses"] = "rbxassetid://10723397895",
			["lucide-globe"] = "rbxassetid://10723404337",
			["lucide-globe-2"] = "rbxassetid://10723398002",
			["lucide-grab"] = "rbxassetid://10723404472",
			["lucide-graduation-cap"] = "rbxassetid://10723404691",
			["lucide-grape"] = "rbxassetid://10723404822",
			["lucide-grid"] = "rbxassetid://10723404936",
			["lucide-grip-horizontal"] = "rbxassetid://10723405089",
			["lucide-grip-vertical"] = "rbxassetid://10723405236",
			["lucide-hammer"] = "rbxassetid://10723405360",
			["lucide-hand"] = "rbxassetid://10723405649",
			["lucide-hand-metal"] = "rbxassetid://10723405508",
			["lucide-hard-drive"] = "rbxassetid://10723405749",
			["lucide-hard-hat"] = "rbxassetid://10723405859",
			["lucide-hash"] = "rbxassetid://10723405975",
			["lucide-haze"] = "rbxassetid://10723406078",
			["lucide-headphones"] = "rbxassetid://10723406165",
			["lucide-heart"] = "rbxassetid://10723406885",
			["lucide-heart-crack"] = "rbxassetid://10723406299",
			["lucide-heart-handshake"] = "rbxassetid://10723406480",
			["lucide-heart-off"] = "rbxassetid://10723406662",
			["lucide-heart-pulse"] = "rbxassetid://10723406795",
			["lucide-help-circle"] = "rbxassetid://10723406988",
			["lucide-hexagon"] = "rbxassetid://10723407092",
			["lucide-highlighter"] = "rbxassetid://10723407192",
			["lucide-history"] = "rbxassetid://10723407335",
			["lucide-home"] = "rbxassetid://10723407389",
			["lucide-hourglass"] = "rbxassetid://10723407498",
			["lucide-ice-cream"] = "rbxassetid://10723414308",
			["lucide-image"] = "rbxassetid://10723415040",
			["lucide-image-minus"] = "rbxassetid://10723414487",
			["lucide-image-off"] = "rbxassetid://10723414677",
			["lucide-image-plus"] = "rbxassetid://10723414827",
			["lucide-import"] = "rbxassetid://10723415205",
			["lucide-inbox"] = "rbxassetid://10723415335",
			["lucide-indent"] = "rbxassetid://10723415494",
			["lucide-indian-rupee"] = "rbxassetid://10723415642",
			["lucide-infinity"] = "rbxassetid://10723415766",
			["lucide-info"] = "rbxassetid://10723415903",
			["lucide-inspect"] = "rbxassetid://10723416057",
			["lucide-italic"] = "rbxassetid://10723416195",
			["lucide-japanese-yen"] = "rbxassetid://10723416363",
			["lucide-joystick"] = "rbxassetid://10723416527",
			["lucide-key"] = "rbxassetid://10723416652",
			["lucide-keyboard"] = "rbxassetid://10723416765",
			["lucide-lamp"] = "rbxassetid://10723417513",
			["lucide-lamp-ceiling"] = "rbxassetid://10723416922",
			["lucide-lamp-desk"] = "rbxassetid://10723417016",
			["lucide-lamp-floor"] = "rbxassetid://10723417131",
			["lucide-lamp-wall-down"] = "rbxassetid://10723417240",
			["lucide-lamp-wall-up"] = "rbxassetid://10723417356",
			["lucide-landmark"] = "rbxassetid://10723417608",
			["lucide-languages"] = "rbxassetid://10723417703",
			["lucide-laptop"] = "rbxassetid://10723423881",
			["lucide-laptop-2"] = "rbxassetid://10723417797",
			["lucide-lasso"] = "rbxassetid://10723424235",
			["lucide-lasso-select"] = "rbxassetid://10723424058",
			["lucide-laugh"] = "rbxassetid://10723424372",
			["lucide-layers"] = "rbxassetid://10723424505",
			["lucide-layout"] = "rbxassetid://10723425376",
			["lucide-layout-dashboard"] = "rbxassetid://10723424646",
			["lucide-layout-grid"] = "rbxassetid://10723424838",
			["lucide-layout-list"] = "rbxassetid://10723424963",
			["lucide-layout-template"] = "rbxassetid://10723425187",
			["lucide-leaf"] = "rbxassetid://10723425539",
			["lucide-library"] = "rbxassetid://10723425615",
			["lucide-life-buoy"] = "rbxassetid://10723425685",
			["lucide-lightbulb"] = "rbxassetid://10723425852",
			["lucide-lightbulb-off"] = "rbxassetid://10723425762",
			["lucide-line-chart"] = "rbxassetid://10723426393",
			["lucide-link"] = "rbxassetid://10723426722",
			["lucide-link-2"] = "rbxassetid://10723426595",
			["lucide-link-2-off"] = "rbxassetid://10723426513",
			["lucide-list"] = "rbxassetid://10723433811",
			["lucide-list-checks"] = "rbxassetid://10734884548",
			["lucide-list-end"] = "rbxassetid://10723426886",
			["lucide-list-minus"] = "rbxassetid://10723426986",
			["lucide-list-music"] = "rbxassetid://10723427081",
			["lucide-list-ordered"] = "rbxassetid://10723427199",
			["lucide-list-plus"] = "rbxassetid://10723427334",
			["lucide-list-start"] = "rbxassetid://10723427494",
			["lucide-list-video"] = "rbxassetid://10723427619",
			["lucide-list-x"] = "rbxassetid://10723433655",
			["lucide-loader"] = "rbxassetid://10723434070",
			["lucide-loader-2"] = "rbxassetid://10723433935",
			["lucide-locate"] = "rbxassetid://10723434557",
			["lucide-locate-fixed"] = "rbxassetid://10723434236",
			["lucide-locate-off"] = "rbxassetid://10723434379",
			["lucide-lock"] = "rbxassetid://10723434711",
			["lucide-log-in"] = "rbxassetid://10723434830",
			["lucide-log-out"] = "rbxassetid://10723434906",
			["lucide-luggage"] = "rbxassetid://10723434993",
			["lucide-magnet"] = "rbxassetid://10723435069",
			["lucide-mail"] = "rbxassetid://10734885430",
			["lucide-mail-check"] = "rbxassetid://10723435182",
			["lucide-mail-minus"] = "rbxassetid://10723435261",
			["lucide-mail-open"] = "rbxassetid://10723435342",
			["lucide-mail-plus"] = "rbxassetid://10723435443",
			["lucide-mail-question"] = "rbxassetid://10723435515",
			["lucide-mail-search"] = "rbxassetid://10734884739",
			["lucide-mail-warning"] = "rbxassetid://10734885015",
			["lucide-mail-x"] = "rbxassetid://10734885247",
			["lucide-mails"] = "rbxassetid://10734885614",
			["lucide-map"] = "rbxassetid://10734886202",
			["lucide-map-pin"] = "rbxassetid://10734886004",
			["lucide-map-pin-off"] = "rbxassetid://10734885803",
			["lucide-maximize"] = "rbxassetid://10734886735",
			["lucide-maximize-2"] = "rbxassetid://10734886496",
			["lucide-medal"] = "rbxassetid://10734887072",
			["lucide-megaphone"] = "rbxassetid://10734887454",
			["lucide-megaphone-off"] = "rbxassetid://10734887311",
			["lucide-meh"] = "rbxassetid://10734887603",
			["lucide-menu"] = "rbxassetid://10734887784",
			["lucide-message-circle"] = "rbxassetid://10734888000",
			["lucide-message-square"] = "rbxassetid://10734888228",
			["lucide-mic"] = "rbxassetid://10734888864",
			["lucide-mic-2"] = "rbxassetid://10734888430",
			["lucide-mic-off"] = "rbxassetid://10734888646",
			["lucide-microscope"] = "rbxassetid://10734889106",
			["lucide-microwave"] = "rbxassetid://10734895076",
			["lucide-milestone"] = "rbxassetid://10734895310",
			["lucide-minimize"] = "rbxassetid://10734895698",
			["lucide-minimize-2"] = "rbxassetid://10734895530",
			["lucide-minus"] = "rbxassetid://10734896206",
			["lucide-minus-circle"] = "rbxassetid://10734895856",
			["lucide-minus-square"] = "rbxassetid://10734896029",
			["lucide-monitor"] = "rbxassetid://10734896881",
			["lucide-monitor-off"] = "rbxassetid://10734896360",
			["lucide-monitor-speaker"] = "rbxassetid://10734896512",
			["lucide-moon"] = "rbxassetid://10734897102",
			["lucide-more-horizontal"] = "rbxassetid://10734897250",
			["lucide-more-vertical"] = "rbxassetid://10734897387",
			["lucide-mountain"] = "rbxassetid://10734897956",
			["lucide-mountain-snow"] = "rbxassetid://10734897665",
			["lucide-mouse"] = "rbxassetid://10734898592",
			["lucide-mouse-pointer"] = "rbxassetid://10734898476",
			["lucide-mouse-pointer-2"] = "rbxassetid://10734898194",
			["lucide-mouse-pointer-click"] = "rbxassetid://10734898355",
			["lucide-move"] = "rbxassetid://10734900011",
			["lucide-move-3d"] = "rbxassetid://10734898756",
			["lucide-move-diagonal"] = "rbxassetid://10734899164",
			["lucide-move-diagonal-2"] = "rbxassetid://10734898934",
			["lucide-move-horizontal"] = "rbxassetid://10734899414",
			["lucide-move-vertical"] = "rbxassetid://10734899821",
			["lucide-music"] = "rbxassetid://10734905958",
			["lucide-music-2"] = "rbxassetid://10734900215",
			["lucide-music-3"] = "rbxassetid://10734905665",
			["lucide-music-4"] = "rbxassetid://10734905823",
			["lucide-navigation"] = "rbxassetid://10734906744",
			["lucide-navigation-2"] = "rbxassetid://10734906332",
			["lucide-navigation-2-off"] = "rbxassetid://10734906144",
			["lucide-navigation-off"] = "rbxassetid://10734906580",
			["lucide-network"] = "rbxassetid://10734906975",
			["lucide-newspaper"] = "rbxassetid://10734907168",
			["lucide-octagon"] = "rbxassetid://10734907361",
			["lucide-option"] = "rbxassetid://10734907649",
			["lucide-outdent"] = "rbxassetid://10734907933",
			["lucide-package"] = "rbxassetid://10734909540",
			["lucide-package-2"] = "rbxassetid://10734908151",
			["lucide-package-check"] = "rbxassetid://10734908384",
			["lucide-package-minus"] = "rbxassetid://10734908626",
			["lucide-package-open"] = "rbxassetid://10734908793",
			["lucide-package-plus"] = "rbxassetid://10734909016",
			["lucide-package-search"] = "rbxassetid://10734909196",
			["lucide-package-x"] = "rbxassetid://10734909375",
			["lucide-paint-bucket"] = "rbxassetid://10734909847",
			["lucide-paintbrush"] = "rbxassetid://10734910187",
			["lucide-paintbrush-2"] = "rbxassetid://10734910030",
			["lucide-palette"] = "rbxassetid://10734910430",
			["lucide-palmtree"] = "rbxassetid://10734910680",
			["lucide-paperclip"] = "rbxassetid://10734910927",
			["lucide-party-popper"] = "rbxassetid://10734918735",
			["lucide-pause"] = "rbxassetid://10734919336",
			["lucide-pause-circle"] = "rbxassetid://10735024209",
			["lucide-pause-octagon"] = "rbxassetid://10734919143",
			["lucide-pen-tool"] = "rbxassetid://10734919503",
			["lucide-pencil"] = "rbxassetid://10734919691",
			["lucide-percent"] = "rbxassetid://10734919919",
			["lucide-person-standing"] = "rbxassetid://10734920149",
			["lucide-phone"] = "rbxassetid://10734921524",
			["lucide-phone-call"] = "rbxassetid://10734920305",
			["lucide-phone-forwarded"] = "rbxassetid://10734920508",
			["lucide-phone-incoming"] = "rbxassetid://10734920694",
			["lucide-phone-missed"] = "rbxassetid://10734920845",
			["lucide-phone-off"] = "rbxassetid://10734921077",
			["lucide-phone-outgoing"] = "rbxassetid://10734921288",
			["lucide-pie-chart"] = "rbxassetid://10734921727",
			["lucide-piggy-bank"] = "rbxassetid://10734921935",
			["lucide-pin"] = "rbxassetid://10734922324",
			["lucide-pin-off"] = "rbxassetid://10734922180",
			["lucide-pipette"] = "rbxassetid://10734922497",
			["lucide-pizza"] = "rbxassetid://10734922774",
			["lucide-plane"] = "rbxassetid://10734922971",
			["lucide-play"] = "rbxassetid://10734923549",
			["lucide-play-circle"] = "rbxassetid://10734923214",
			["lucide-plus"] = "rbxassetid://10734924532",
			["lucide-plus-circle"] = "rbxassetid://10734923868",
			["lucide-plus-square"] = "rbxassetid://10734924219",
			["lucide-podcast"] = "rbxassetid://10734929553",
			["lucide-pointer"] = "rbxassetid://10734929723",
			["lucide-pound-sterling"] = "rbxassetid://10734929981",
			["lucide-power"] = "rbxassetid://10734930466",
			["lucide-power-off"] = "rbxassetid://10734930257",
			["lucide-printer"] = "rbxassetid://10734930632",
			["lucide-puzzle"] = "rbxassetid://10734930886",
			["lucide-quote"] = "rbxassetid://10734931234",
			["lucide-radio"] = "rbxassetid://10734931596",
			["lucide-radio-receiver"] = "rbxassetid://10734931402",
			["lucide-rectangle-horizontal"] = "rbxassetid://10734931777",
			["lucide-rectangle-vertical"] = "rbxassetid://10734932081",
			["lucide-recycle"] = "rbxassetid://10734932295",
			["lucide-redo"] = "rbxassetid://10734932822",
			["lucide-redo-2"] = "rbxassetid://10734932586",
			["lucide-refresh-ccw"] = "rbxassetid://10734933056",
			["lucide-refresh-cw"] = "rbxassetid://10734933222",
			["lucide-refrigerator"] = "rbxassetid://10734933465",
			["lucide-regex"] = "rbxassetid://10734933655",
			["lucide-repeat"] = "rbxassetid://10734933966",
			["lucide-repeat-1"] = "rbxassetid://10734933826",
			["lucide-reply"] = "rbxassetid://10734934252",
			["lucide-reply-all"] = "rbxassetid://10734934132",
			["lucide-rewind"] = "rbxassetid://10734934347",
			["lucide-rocket"] = "rbxassetid://10734934585",
			["lucide-rocking-chair"] = "rbxassetid://10734939942",
			["lucide-rotate-3d"] = "rbxassetid://10734940107",
			["lucide-rotate-ccw"] = "rbxassetid://10734940376",
			["lucide-rotate-cw"] = "rbxassetid://10734940654",
			["lucide-rss"] = "rbxassetid://10734940825",
			["lucide-ruler"] = "rbxassetid://10734941018",
			["lucide-russian-ruble"] = "rbxassetid://10734941199",
			["lucide-sailboat"] = "rbxassetid://10734941354",
			["lucide-save"] = "rbxassetid://10734941499",
			["lucide-scale"] = "rbxassetid://10734941912",
			["lucide-scale-3d"] = "rbxassetid://10734941739",
			["lucide-scaling"] = "rbxassetid://10734942072",
			["lucide-scan"] = "rbxassetid://10734942565",
			["lucide-scan-face"] = "rbxassetid://10734942198",
			["lucide-scan-line"] = "rbxassetid://10734942351",
			["lucide-scissors"] = "rbxassetid://10734942778",
			["lucide-screen-share"] = "rbxassetid://10734943193",
			["lucide-screen-share-off"] = "rbxassetid://10734942967",
			["lucide-scroll"] = "rbxassetid://10734943448",
			["lucide-search"] = "rbxassetid://10734943674",
			["lucide-send"] = "rbxassetid://10734943902",
			["lucide-separator-horizontal"] = "rbxassetid://10734944115",
			["lucide-separator-vertical"] = "rbxassetid://10734944326",
			["lucide-server"] = "rbxassetid://10734949856",
			["lucide-server-cog"] = "rbxassetid://10734944444",
			["lucide-server-crash"] = "rbxassetid://10734944554",
			["lucide-server-off"] = "rbxassetid://10734944668",
			["lucide-settings"] = "rbxassetid://10734950309",
			["lucide-settings-2"] = "rbxassetid://10734950020",
			["lucide-share"] = "rbxassetid://10734950813",
			["lucide-share-2"] = "rbxassetid://10734950553",
			["lucide-sheet"] = "rbxassetid://10734951038",
			["lucide-shield"] = "rbxassetid://10734951847",
			["lucide-shield-alert"] = "rbxassetid://10734951173",
			["lucide-shield-check"] = "rbxassetid://10734951367",
			["lucide-shield-close"] = "rbxassetid://10734951535",
			["lucide-shield-off"] = "rbxassetid://10734951684",
			["lucide-shirt"] = "rbxassetid://10734952036",
			["lucide-shopping-bag"] = "rbxassetid://10734952273",
			["lucide-shopping-cart"] = "rbxassetid://10734952479",
			["lucide-shovel"] = "rbxassetid://10734952773",
			["lucide-shower-head"] = "rbxassetid://10734952942",
			["lucide-shrink"] = "rbxassetid://10734953073",
			["lucide-shrub"] = "rbxassetid://10734953241",
			["lucide-shuffle"] = "rbxassetid://10734953451",
			["lucide-sidebar"] = "rbxassetid://10734954301",
			["lucide-sidebar-close"] = "rbxassetid://10734953715",
			["lucide-sidebar-open"] = "rbxassetid://10734954000",
			["lucide-sigma"] = "rbxassetid://10734954538",
			["lucide-signal"] = "rbxassetid://10734961133",
			["lucide-signal-high"] = "rbxassetid://10734954807",
			["lucide-signal-low"] = "rbxassetid://10734955080",
			["lucide-signal-medium"] = "rbxassetid://10734955336",
			["lucide-signal-zero"] = "rbxassetid://10734960878",
			["lucide-siren"] = "rbxassetid://10734961284",
			["lucide-skip-back"] = "rbxassetid://10734961526",
			["lucide-skip-forward"] = "rbxassetid://10734961809",
			["lucide-skull"] = "rbxassetid://10734962068",
			["lucide-slack"] = "rbxassetid://10734962339",
			["lucide-slash"] = "rbxassetid://10734962600",
			["lucide-slice"] = "rbxassetid://10734963024",
			["lucide-sliders"] = "rbxassetid://10734963400",
			["lucide-sliders-horizontal"] = "rbxassetid://10734963191",
			["lucide-smartphone"] = "rbxassetid://10734963940",
			["lucide-smartphone-charging"] = "rbxassetid://10734963671",
			["lucide-smile"] = "rbxassetid://10734964441",
			["lucide-smile-plus"] = "rbxassetid://10734964188",
			["lucide-snowflake"] = "rbxassetid://10734964600",
			["lucide-sofa"] = "rbxassetid://10734964852",
			["lucide-sort-asc"] = "rbxassetid://10734965115",
			["lucide-sort-desc"] = "rbxassetid://10734965287",
			["lucide-speaker"] = "rbxassetid://10734965419",
			["lucide-sprout"] = "rbxassetid://10734965572",
			["lucide-square"] = "rbxassetid://10734965702",
			["lucide-star"] = "rbxassetid://10734966248",
			["lucide-star-half"] = "rbxassetid://10734965897",
			["lucide-star-off"] = "rbxassetid://10734966097",
			["lucide-stethoscope"] = "rbxassetid://10734966384",
			["lucide-sticker"] = "rbxassetid://10734972234",
			["lucide-sticky-note"] = "rbxassetid://10734972463",
			["lucide-stop-circle"] = "rbxassetid://10734972621",
			["lucide-stretch-horizontal"] = "rbxassetid://10734972862",
			["lucide-stretch-vertical"] = "rbxassetid://10734973130",
			["lucide-strikethrough"] = "rbxassetid://10734973290",
			["lucide-subscript"] = "rbxassetid://10734973457",
			["lucide-sun"] = "rbxassetid://10734974297",
			["lucide-sun-dim"] = "rbxassetid://10734973645",
			["lucide-sun-medium"] = "rbxassetid://10734973778",
			["lucide-sun-moon"] = "rbxassetid://10734973999",
			["lucide-sun-snow"] = "rbxassetid://10734974130",
			["lucide-sunrise"] = "rbxassetid://10734974522",
			["lucide-sunset"] = "rbxassetid://10734974689",
			["lucide-superscript"] = "rbxassetid://10734974850",
			["lucide-swiss-franc"] = "rbxassetid://10734975024",
			["lucide-switch-camera"] = "rbxassetid://10734975214",
			["lucide-sword"] = "rbxassetid://10734975486",
			["lucide-swords"] = "rbxassetid://10734975692",
			["lucide-syringe"] = "rbxassetid://10734975932",
			["lucide-table"] = "rbxassetid://10734976230",
			["lucide-table-2"] = "rbxassetid://10734976097",
			["lucide-tablet"] = "rbxassetid://10734976394",
			["lucide-tag"] = "rbxassetid://10734976528",
			["lucide-tags"] = "rbxassetid://10734976739",
			["lucide-target"] = "rbxassetid://10734977012",
			["lucide-tent"] = "rbxassetid://10734981750",
			["lucide-terminal"] = "rbxassetid://10734982144",
			["lucide-terminal-square"] = "rbxassetid://10734981995",
			["lucide-text-cursor"] = "rbxassetid://10734982395",
			["lucide-text-cursor-input"] = "rbxassetid://10734982297",
			["lucide-thermometer"] = "rbxassetid://10734983134",
			["lucide-thermometer-snowflake"] = "rbxassetid://10734982571",
			["lucide-thermometer-sun"] = "rbxassetid://10734982771",
			["lucide-thumbs-down"] = "rbxassetid://10734983359",
			["lucide-thumbs-up"] = "rbxassetid://10734983629",
			["lucide-ticket"] = "rbxassetid://10734983868",
			["lucide-timer"] = "rbxassetid://10734984606",
			["lucide-timer-off"] = "rbxassetid://10734984138",
			["lucide-timer-reset"] = "rbxassetid://10734984355",
			["lucide-toggle-left"] = "rbxassetid://10734984834",
			["lucide-toggle-right"] = "rbxassetid://10734985040",
			["lucide-tornado"] = "rbxassetid://10734985247",
			["lucide-toy-brick"] = "rbxassetid://10747361919",
			["lucide-train"] = "rbxassetid://10747362105",
			["lucide-trash"] = "rbxassetid://10747362393",
			["lucide-trash-2"] = "rbxassetid://10747362241",
			["lucide-tree-deciduous"] = "rbxassetid://10747362534",
			["lucide-tree-pine"] = "rbxassetid://10747362748",
			["lucide-trees"] = "rbxassetid://10747363016",
			["lucide-trending-down"] = "rbxassetid://10747363205",
			["lucide-trending-up"] = "rbxassetid://10747363465",
			["lucide-triangle"] = "rbxassetid://10747363621",
			["lucide-trophy"] = "rbxassetid://10747363809",
			["lucide-truck"] = "rbxassetid://10747364031",
			["lucide-tv"] = "rbxassetid://10747364593",
			["lucide-tv-2"] = "rbxassetid://10747364302",
			["lucide-type"] = "rbxassetid://10747364761",
			["lucide-umbrella"] = "rbxassetid://10747364971",
			["lucide-underline"] = "rbxassetid://10747365191",
			["lucide-undo"] = "rbxassetid://10747365484",
			["lucide-undo-2"] = "rbxassetid://10747365359",
			["lucide-unlink"] = "rbxassetid://10747365771",
			["lucide-unlink-2"] = "rbxassetid://10747397871",
			["lucide-unlock"] = "rbxassetid://10747366027",
			["lucide-upload"] = "rbxassetid://10747366434",
			["lucide-upload-cloud"] = "rbxassetid://10747366266",
			["lucide-usb"] = "rbxassetid://10747366606",
			["lucide-user"] = "rbxassetid://10747373176",
			["lucide-user-check"] = "rbxassetid://10747371901",
			["lucide-user-cog"] = "rbxassetid://10747372167",
			["lucide-user-minus"] = "rbxassetid://10747372346",
			["lucide-user-plus"] = "rbxassetid://10747372702",
			["lucide-user-x"] = "rbxassetid://10747372992",
			["lucide-users"] = "rbxassetid://10747373426",
			["lucide-utensils"] = "rbxassetid://10747373821",
			["lucide-utensils-crossed"] = "rbxassetid://10747373629",
			["lucide-venetian-mask"] = "rbxassetid://10747374003",
			["lucide-verified"] = "rbxassetid://10747374131",
			["lucide-vibrate"] = "rbxassetid://10747374489",
			["lucide-vibrate-off"] = "rbxassetid://10747374269",
			["lucide-video"] = "rbxassetid://10747374938",
			["lucide-video-off"] = "rbxassetid://10747374721",
			["lucide-view"] = "rbxassetid://10747375132",
			["lucide-voicemail"] = "rbxassetid://10747375281",
			["lucide-volume"] = "rbxassetid://10747376008",
			["lucide-volume-1"] = "rbxassetid://10747375450",
			["lucide-volume-2"] = "rbxassetid://10747375679",
			["lucide-volume-x"] = "rbxassetid://10747375880",
			["lucide-wallet"] = "rbxassetid://10747376205",
			["lucide-wand"] = "rbxassetid://10747376565",
			["lucide-wand-2"] = "rbxassetid://10747376349",
			["lucide-watch"] = "rbxassetid://10747376722",
			["lucide-waves"] = "rbxassetid://10747376931",
			["lucide-webcam"] = "rbxassetid://10747381992",
			["lucide-wifi"] = "rbxassetid://10747382504",
			["lucide-wifi-off"] = "rbxassetid://10747382268",
			["lucide-wind"] = "rbxassetid://10747382750",
			["lucide-wrap-text"] = "rbxassetid://10747383065",
			["lucide-wrench"] = "rbxassetid://10747383470",
			["lucide-x"] = "rbxassetid://10747384394",
			["lucide-x-circle"] = "rbxassetid://10747383819",
			["lucide-x-octagon"] = "rbxassetid://10747384037",
			["lucide-x-square"] = "rbxassetid://10747384217",
			["lucide-zoom-in"] = "rbxassetid://10747384552",
			["lucide-zoom-out"] = "rbxassetid://10747384679",
		}
	end
	function a.i()
		local b = a.load("a")
		local c = a.load("d")
		local d = a.load("f")
		local e = {}

		function e.Attach(f)
			f:SetAttribute("ElementGroup", true)

			local g = d.ListLayout(0, Enum.FillDirection.Vertical, f)
			local h, i, j = {}, {}, {}
			local k, l = false, false

			local function sync()
				k = false

				if l then
					return
				end

				local m = nil

				for n, o in ipairs(h) do
					local p = o.Row

					if p.Parent == f then
						p.LayoutOrder = n * 2
						o.Line.LayoutOrder = n * 2 - 1
						o.Line.Visible = p.Visible and m ~= nil and p.Name ~= "Separator" and m.Name ~= "Separator"

						if p.Visible then
							m = p
						end
					else
						o.Line.Visible = false
					end
				end
			end
			local function schedule()
				if k or l then
					return
				end

				k = true

				task.defer(sync)
			end
			local function register(m)
				if not m:IsA("GuiObject") or m:GetAttribute("GroupDivider") then
					return
				end
				if j[m] then
					schedule()

					return
				end

				j[m] = true

				local n = b("Frame", {
					Name = "GroupDivider",
					Size = UDim2.new(1, 0, 0, c.Spacing.Divider),
					BackgroundTransparency = 1,
					Visible = false,
					BorderSizePixel = 0,
				})

				n:SetAttribute("GroupDivider", true)
				b("Frame", {
					Name = "Line",
					Position = UDim2.fromOffset(c.Spacing.RowX, 0),
					Size = UDim2.new(1, -2 * c.Spacing.RowX, 1, 0),
					BackgroundColor3 = c.Theme.BorderColor,
					BackgroundTransparency = c.Surface.Border,
					BorderSizePixel = 0,
					Parent = n,
				})

				n.Parent = f

				table.insert(h, {
					Row = m,
					Line = n,
				})
				table.insert(i, m:GetPropertyChangedSignal("Visible"):Connect(schedule))
				table.insert(i, m.AncestryChanged:Connect(schedule))
				schedule()
			end

			for m, n in ipairs(f:GetChildren()) do
				register(n)
			end

			table.insert(i, f.ChildAdded:Connect(register))
			f.Destroying:Connect(function()
				l = true

				for m, n in ipairs(i) do
					n:Disconnect()
				end
			end)

			return g
		end

		return e
	end
	function a.j()
		local b = {}
		local c = { __index = b }

		function b.new()
			local d = setmetatable({}, c)

			d.Listens = {}

			return d
		end
		function b:Add(d: () -> ())
			self.Listens[d] = d
		end
		function b:Remove(d: () -> ())
			self.Listens[d] = nil
		end
		function b:Fire(...)
			for d, e in self.Listens do
				task.spawn(e, ...)
			end
		end

		return b
	end
	function a.k()
		local b = a.load("f")
		local c = a.load("a")
		local d = a.load("d")
		local e = a.load("h")
		local f = a.load("g")
		local g = {}

		local function _build(h: Instance, i: string, j: string)
			local k = d.getFont("Body")
			local l = c("Frame", {
				Name = "CardRow",
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundColor3 = d.Theme.SecondaryColor,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Parent = h,
			})

			b.Padding(d.Spacing.RowY, d.Spacing.RowY, d.Spacing.RowX, d.Spacing.RowX, l)
			b.ListLayout(d.Spacing.Description, Enum.FillDirection.Vertical, l)
			c("UISizeConstraint", {
				MinSize = Vector2.new(0, d.Spacing.TouchTarget - d.Spacing.RowY * 2),
				Parent = l,
			})
			l.MouseEnter:Connect(function()
				f.Play(l, { BackgroundTransparency = 0.65 }, {
					Time = d.Motion.Interaction,
				})
			end)
			l.MouseLeave:Connect(function()
				f.Play(l, { BackgroundTransparency = 1 }, {
					Time = d.Motion.Interaction,
				})
			end)

			local m = c("Frame", {
				Name = "TopWrapper",
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				LayoutOrder = 1,
				Parent = l,
			})
			local n = c("Frame", {
				Name = "TopRow",
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Parent = m,
			})
			local o = b.ListLayout(d.Spacing.Control, Enum.FillDirection.Horizontal, n)

			o.VerticalAlignment = Enum.VerticalAlignment.Center

			c("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(0.5, -d.Spacing.Control / 2, 0, 0),
				TextSize = k.Size,
				Text = i,
				TextColor3 = d.Theme.TextColor,
				FontFace = Font.new(k.Font, k.Weight, k.Style),
				TextWrapped = true,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
				Parent = n,
			})

			if j then
				local p = c("Frame", {
					AutomaticSize = Enum.AutomaticSize.Y,
					Size = UDim2.new(1, 0, 0, 0),
					BackgroundTransparency = 1,
					LayoutOrder = 3,
					Parent = l,
				})

				b.ListLayout(0, Enum.FillDirection.Horizontal, p)
				c("TextLabel", {
					AutomaticSize = Enum.AutomaticSize.Y,
					Size = UDim2.new(1, 0, 0, 0),
					TextSize = k.Size - 2,
					Text = j,
					TextColor3 = d.Theme.TextMutedColor,
					FontFace = Font.new(k.Font, k.Weight, k.Style),
					TextWrapped = true,
					TextYAlignment = Enum.TextYAlignment.Top,
					TextXAlignment = Enum.TextXAlignment.Left,
					BackgroundTransparency = 1,
					Parent = p,
				})
			end

			local p = false

			local function update()
				if p then
					return
				end

				p = true

				task.defer(function()
					p = false

					if not n.Parent then
						return
					end

					local q = b.LayoutScale(n)
					local r = n.AbsoluteSize.X / q
					local s = {}

					for t, u in ipairs(n:GetChildren()) do
						if u:IsA("GuiObject") then
							table.insert(s, u)
						end
					end

					local t, u = 0, 24

					for v, w in ipairs(s) do
						if w:IsA("Frame") then
							local x = 0
							local y = w:FindFirstChildOfClass("UIListLayout")

							if y then
								x = y.AbsoluteContentSize.X / q
							end

							for z, A in ipairs(w:GetChildren()) do
								if A:IsA("GuiObject") then
									x = math.max(x, A.AbsoluteSize.X / q, A.Size.X.Offset)
									u = math.max(u, A.AbsoluteSize.Y / q, A.Size.Y.Offset)
								end
							end

							t = math.max(t, x)
						end
					end

					local v = #s > 1 and r < (n:GetAttribute("MinimumLabelWidth") or 96) + d.Spacing.Control + t

					o.FillDirection = if v then Enum.FillDirection.Vertical else Enum.FillDirection.Horizontal
					o.Padding = UDim.new(0, if v then 8 else d.Spacing.Control)

					for w, x in ipairs(s) do
						x.LayoutOrder = w

						if x:IsA("TextLabel") then
							x.Size = if #s == 1 or v
								then UDim2.new(1, 0, 0, 0)
								else UDim2.new(1, -t - d.Spacing.Control, 0, 0)
						elseif x:IsA("Frame") then
							x.Size = if v then UDim2.new(1, 0, 0, u) else UDim2.fromOffset(t, u)
						end
					end
				end)
			end

			n.ChildAdded:Connect(update)
			n.ChildRemoved:Connect(update)

			local function trackControl(q)
				if q:IsA("GuiObject") and q ~= n and not q:IsA("TextLabel") then
					q:GetPropertyChangedSignal("AbsoluteSize"):Connect(update)
				end
			end

			for q, r in ipairs(n:GetDescendants()) do
				trackControl(r)
			end

			n.DescendantAdded:Connect(trackControl)
			n:GetPropertyChangedSignal("AbsoluteSize"):Connect(update)
			update()

			return l, n, m
		end

		function g.new(h: any, i: string, j: string)
			local k = setmetatable({ Label = i }, { __index = g })

			if typeof(h) == "table" and h.IsMany then
				local l = h.LayoutMode == "Stack" and h.ElementCount > 1
				local m = if game:GetService("UserInputService").TouchEnabled then 44 else 28
				local n = c("Frame", {
					Name = i .. "Item",
					Size = l and UDim2.new(1, 0, 0, m) or UDim2.fromOffset(0, 0),
					AutomaticSize = l and Enum.AutomaticSize.None or Enum.AutomaticSize.XY,
					BackgroundTransparency = 1,
					Parent = h.RightContainer,
				})
				local o = b.ListLayout(8, Enum.FillDirection.Horizontal, n)

				o.VerticalAlignment = Enum.VerticalAlignment.Center

				n.ChildAdded:Connect(function(p)
					task.defer(function()
						if not p or not p.Parent then
							return
						end
						if p:IsA("Frame") and p.BackgroundTransparency == 1 and #p:GetChildren() == 0 then
							p:Destroy()
						elseif p:IsA("TextLabel") then
							p.AutomaticSize = Enum.AutomaticSize.X
							p.Size = UDim2.fromOffset(0, p.Size.Y.Offset)
						elseif p:IsA("Frame") and string.match(p.Name, "Slot$") then
							local function formatInteractive(q)
								if not q then
									return
								end
								if l then
									q.AnchorPoint = Vector2.new(0, 0)
									q.Position = UDim2.fromScale(0, 0)
									q.Size = UDim2.new(1, 0, 0, m)
								else
									q.AnchorPoint = Vector2.new(0, 0)
									q.Position = UDim2.fromScale(0, 0)
								end
							end

							local q = p:FindFirstChildOfClass("TextButton")
								or p:FindFirstChildOfClass("TextBox")
								or p:FindFirstChildOfClass("Frame")

							if q then
								formatInteractive(q)
							end

							p.ChildAdded:Connect(formatInteractive)

							if l then
								p.AutomaticSize = Enum.AutomaticSize.None
								p.Size = UDim2.new(1, 0, 0, m)
							else
								p.AutomaticSize = Enum.AutomaticSize.XY
								p.Size = UDim2.fromOffset(0, 0)
							end
						end
					end)
				end)

				k.RowContainer = n
				k.TopContainer = n
				k.TopWrapper = n
			else
				k.RowContainer, k.TopContainer, k.TopWrapper = _build(h, i, j)
			end

			return k
		end
		function g:_buildSettingsButton()
			if self.SettingsButton then
				return
			end

			self.DisclosureOpened = false

			if self.TopContainer then
				self.TopContainer.Size = UDim2.new(1, -26, 0, 0)
			end

			self.SettingsButton = c("ImageButton", {
				Name = "SettingsButton",
				Size = UDim2.fromOffset(18, 18),
				Position = UDim2.new(1, 0, 0.5, 0),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundTransparency = 1,
				Image = e["lucide-settings"],
				ImageColor3 = d.Theme.TextMutedColor,
				ScaleType = Enum.ScaleType.Fit,
				ZIndex = 5,
				Parent = self.TopWrapper,
			})

			self.SettingsButton.MouseEnter:Connect(function()
				f.Play(self.SettingsButton, {
					ImageColor3 = d.Theme.AccentColor,
				})
			end)
			self.SettingsButton.MouseLeave:Connect(function()
				if not self.DisclosureOpened then
					f.Play(self.SettingsButton, {
						ImageColor3 = d.Theme.TextMutedColor,
					})
				end
			end)
			self.SettingsButton.MouseButton1Click:Connect(function()
				self:ToggleDisclosure()
			end)
			b.TouchTarget(self.SettingsButton, function()
				self:ToggleDisclosure()
			end)
		end
		function g:CreateDisclosure(h)
			if self.Disclosure then
				return self.Disclosure
			end

			self.Section = h

			self:_buildSettingsButton()

			local i = g.DisclosureClass

			assert(i, "DisclosureClass is not registered on Row")

			self.Disclosure = i.new(self, h)

			return self.Disclosure
		end
		function g:ToggleDisclosure(h: boolean?)
			if self.LockOverlay and h ~= false then
				return
			end
			if not self.Disclosure then
				return
			end
			if h ~= nil then
				self.DisclosureOpened = h
			else
				self.DisclosureOpened = not self.DisclosureOpened
			end

			f.Play(self.SettingsButton, {
				Rotation = self.DisclosureOpened and 90 or 0,
				ImageColor3 = self.DisclosureOpened and d.Theme.AccentColor or d.Theme.TextMutedColor,
			})
			self.Disclosure:SetVisible(self.DisclosureOpened)
		end
		function g:Lock(h: string)
			if self.LockOverlay then
				self:UnLock()
			end

			local i = d.getFont("Body")
			local j = Instance.new("Folder")

			j.Name = "LockFolder"
			j.Parent = self.RowContainer

			local k = c("TextButton", {
				Name = "LockOverlay",
				Size = UDim2.fromScale(1, 1),
				Position = UDim2.fromScale(0, 0),
				BackgroundColor3 = d.Theme.PrimaryColor,
				BackgroundTransparency = 0.08,
				Text = "",
				AutoButtonColor = false,
				Active = true,
				ZIndex = 50,
				Parent = j,
			})

			b.Corner(d.Surface.ControlRadius, k)

			local l = b.ListLayout(8, Enum.FillDirection.Horizontal, k)

			l.HorizontalAlignment = Enum.HorizontalAlignment.Center
			l.VerticalAlignment = Enum.VerticalAlignment.Center

			c("ImageLabel", {
				Name = "LockIcon",
				Size = UDim2.fromOffset(16, 16),
				BackgroundTransparency = 1,
				Image = e["lucide-lock"],
				ImageColor3 = d.Theme.AccentColor,
				ZIndex = 51,
				Parent = k,
			})
			c("TextLabel", {
				Name = "LockReason",
				AutomaticSize = Enum.AutomaticSize.XY,
				Text = h or "locked",
				TextColor3 = d.Theme.TextColor,
				TextSize = i.Size - 1,
				FontFace = Font.new(i.Font, i.Weight, i.Style),
				BackgroundTransparency = 1,
				ZIndex = 51,
				Parent = k,
			})

			self.LockFolder = j
			self.LockOverlay = k

			if self.DisclosureOpened then
				self:ToggleDisclosure(false)
			end
		end
		function g:UnLock()
			if self.LockFolder then
				self.LockFolder:Destroy()

				self.LockFolder = nil
			end

			self.LockOverlay = nil
		end

		return g
	end
	function a.l()
		local b = a.load("f")
		local c = a.load("a")
		local d = a.load("g")
		local e = a.load("d")
		local f = a.load("j")
		local g = a.load("k")
		local h = {}

		function h.new(i, j: ToggleArgs__DARKLUA_TYPE_c)
			local k = setmetatable({}, { __index = h })

			k.Label = j.Label
			k.Desc = j.Desc
			k.Values = j.Values or i.Flags
			k.Flag = if type(j.Value) == "string" then j.Value else nil
			k.Default = j.Default == true
			k.Value = k.Default
			k.Callback = j.Callback
			k.Section = i
			k.State = f.new()

			if k.Flag and k.Values then
				local l = k.Values[k.Flag]

				k.Value = if type(l) == "boolean" then l else k.Default
				k.Values[k.Flag] = k.Value
			else
				k.Value = j.Value == true
			end

			k:_build()

			return k
		end
		function h:_commitValue(i: boolean)
			self.Value = i

			if self.Flag and self.Values then
				self.Values[self.Flag] = i
			end

			self:_render()
			self.State:Fire(self.Value)

			if self.Callback then
				self.Callback(self.Value)
			end
		end
		function h:SetValue(i: boolean)
			if self.IsLocked then
				self.PreLockValue = i == true
			elseif self.Value ~= (i == true) then
				self:_commitValue(i == true)
			end

			return self
		end
		function h:_render()
			if not self.ValueFrameContainer then
				return
			end

			d.Play(self.ValueFrameContainer, {
				BackgroundColor3 = self.Value and e.Theme.AccentColor or e.Theme.CardBackgroundColor,
			})
			d.Play(self.ValueFrame, {
				BackgroundColor3 = e.Theme.White,
				Position = self.Value and UDim2.new(1, -30, 0.5, 0) or UDim2.new(0, 2, 0.5, 0),
			})
		end
		function h:_build()
			local i = e.getFont("Body")
			local j = g.new(self.Section.Container, self.Label, self.Desc)

			self.Row = j

			local k = typeof(self.Section) == "table" and self.Section.IsMany
			local l = j.TopContainer

			if not k then
				local m = c("Frame", {
					Name = "ToggleSlot",
					Size = UDim2.new(0.5, -10, 1, 0),
					BackgroundTransparency = 1,
					Parent = j.TopContainer,
				})

				l = m
			end

			local m = c("TextButton", {
				Name = "ToggleContainer",
				AnchorPoint = k and Vector2.new(0, 0.5) or Vector2.new(1, 0.5),
				Position = k and UDim2.new(0, 0, 0.5, 0) or UDim2.new(1, 0, 0.5, 0),
				Size = UDim2.fromOffset(48, 22),
				BackgroundColor3 = self.Value and e.Theme.AccentColor or e.Theme.CardBackgroundColor,
				Text = "",
				AutoButtonColor = false,
				Parent = l,
			})

			b.Corner(999, m)

			b.Stroke(1, e.Theme.BorderColor, m).Transparency = e.Surface.Border

			local n = c("Frame", {
				Name = "ToggleKnob",
				AnchorPoint = Vector2.new(0, 0.5),
				Position = self.Value and UDim2.new(1, -30, 0.5, 0) or UDim2.new(0, 2, 0.5, 0),
				Size = UDim2.fromOffset(28, 18),
				BackgroundColor3 = e.Theme.White,
				Parent = m,
			})

			b.Corner(999, n)

			self.ValueFrameContainer = m
			self.ValueFrame = n

			local function activate()
				if self.IsLocked then
					return
				end

				self:_commitValue(not self.Value)
			end

			m.Activated:Connect(activate)
			b.TouchTarget(m, activate)
		end
		function h:Lock(i: string)
			if self.IsLocked then
				return
			end

			self.IsLocked = true
			self.PreLockValue = self.Value
			self.Value = nil

			if self.Flag and self.Values then
				self.Values[self.Flag] = nil
			end

			self:_render()
			self.State:Fire(nil)

			if self.Callback then
				self.Callback(nil)
			end
			if self.Row then
				self.Row:Lock(i)
			end
		end
		function h:UnLock()
			if not self.IsLocked then
				return
			end

			self.IsLocked = false

			local i = self.PreLockValue

			self.Value = i

			if self.Flag and self.Values then
				self.Values[self.Flag] = i
			end

			self:_render()
			self.State:Fire(i)

			if self.Callback then
				self.Callback(i)
			end
			if self.Row then
				self.Row:UnLock()
			end
		end
		function h:OnChange(i: () -> ())
			self.State:Add(i)

			if self.Value == true then
				task.defer(i, self.Value)
			end
		end
		function h:AddDisclosure()
			return self.Row:CreateDisclosure(self.Section)
		end

		return h
	end
	function a.m()
		local b = a.load("a")
		local c = a.load("f")
		local d = a.load("g")
		local e = a.load("d")
		local f = a.load("h")
		local g = game:GetService("UserInputService")
		local h = {}

		function h.Visible(i, j)
			if not i or not i.Parent then
				return false
			end

			local k = i

			while k do
				if k:IsA("GuiObject") and not k.Visible and k ~= j then
					return false
				end
				if k:IsA("ScreenGui") and not k.Enabled then
					return false
				end

				k = k.Parent
			end

			return true
		end
		function h.Create(i, j)
			i.IsModalController = true
			i.TriggerButton = j
			i.ParentModal = i.Section and i.Section.ModalOwner
			i.Transition, i.TransitionToken, i.TransitionTweens = "Closed", 0, {}

			local k = i.Window

			if not k.ModalSurface then
				k.ModalSurface = b("CanvasGroup", {
					Name = "ModalSurface",
					AnchorPoint = Vector2.new(0.5, 0.5),
					Visible = false,
					BackgroundColor3 = e.Theme.GroupColor,
					BackgroundTransparency = e.Surface.Group,
					BorderSizePixel = 0,
					ClipsDescendants = true,
					Active = true,
					ZIndex = 100,
					Parent = k:GetOverlayParent(),
				})

				c.Corner(e.Surface.ModalRadius, k.ModalSurface)

				c.Stroke(1, e.Theme.BorderColor, k.ModalSurface).Transparency = e.Surface.Border
				k.ModalScale = b("UIScale", {
					Parent = k.ModalSurface,
				})
			end

			i.Modal, i.ModalScale = k.ModalSurface, k.ModalScale
			i.ModalBody = b("CanvasGroup", {
				Name = i.Label .. "Body",
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.fromScale(1, 1),
				Visible = false,
				ZIndex = 101,
				Parent = i.Modal,
			})

			local l = e.getFont("Body")
			local m = Font.new(l.Font, l.Weight, l.Style)

			i.ModalClose = b("TextButton", {
				Name = "Back",
				Text = "",
				Size = UDim2.fromOffset(28, 28),
				AutoButtonColor = false,
				BackgroundColor3 = e.Theme.CardBackgroundColor,
				ZIndex = 102,
				Parent = i.ModalBody,
			})

			c.Corner(999, i.ModalClose)
			c.Stroke(1, e.Theme.BorderColor, i.ModalClose)
			b("ImageLabel", {
				Name = "Icon",
				Image = f["lucide-chevron-left"],
				ImageColor3 = e.Theme.TextColor,
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				Size = UDim2.fromOffset(16, 16),
				ZIndex = 103,
				Parent = i.ModalClose,
			})

			i.ModalTitle = b("TextLabel", {
				Name = "Title",
				Text = i.Label,
				TextSize = 14,
				FontFace = m,
				TextColor3 = e.Theme.TextColor,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextTruncate = Enum.TextTruncate.AtEnd,
				ZIndex = 102,
				Parent = i.ModalBody,
			})
			i.ModalDescription = b("TextLabel", {
				Name = "Description",
				Text = i.Desc or "",
				TextSize = 11,
				FontFace = m,
				TextColor3 = e.Theme.TextMutedColor,
				BackgroundTransparency = 1,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				ZIndex = 102,
				Parent = i.ModalBody,
			})

			i.ModalClose.Activated:Connect(function()
				i:Close()
			end)
			c.TouchTarget(i.ModalClose, function()
				i:Close()
			end)

			i._cancelTransition, i._tween = h.Cancel, h.Tween
			i.Open, i.Close = h.Open, h.Close
			i._origin = h.Origin
		end
		function h.Cancel(i)
			i.TransitionToken += 1

			for j, k in ipairs(i.TransitionTweens) do
				k:Cancel()
			end

			i.TransitionTweens = {}
		end
		function h.Tween(i, j, k, l)
			local m = d.Play(j, k, l)

			table.insert(i.TransitionTweens, m)

			return m
		end
		function h.Origin(i)
			local j = i.ParentModal and i.ParentModal.ModalBody

			if not h.Visible(i.TriggerButton, j) then
				return nil
			end

			return i.TriggerButton.AbsolutePosition
				+ i.TriggerButton.AbsoluteSize / 2
				- i.Window:GetOverlayParent().AbsolutePosition
		end
		function h.Geometry(i)
			local j, k = i.Window:GetOverlayParent(), i.Window.Container
			local l, m = k.AbsolutePosition - j.AbsolutePosition, k.AbsoluteSize
			local n = l.Y + m.Y

			if g.OnScreenKeyboardVisible then
				n = math.min(n, g.OnScreenKeyboardPosition.Y - j.AbsolutePosition.Y)
			end

			local o = math.max(1, n - l.Y)
			local p, q = math.max(1, math.min(360, m.X - 24)), math.max(1, math.min(380, o - 24))

			i.TargetCenter = Vector2.new(l.X + m.X / 2, l.Y + o / 2)
			i.Modal.Size = UDim2.fromOffset(p, q)

			return p, q
		end
		function h.Retarget(i)
			if i.Transition == "Opening" and not i.NestedTransition then
				i:_tween(i.Modal, {
					Position = UDim2.fromOffset(i.TargetCenter.X, i.TargetCenter.Y),
				}, {
					Time = math.max(0.01, e.Motion.ModalOpen - (os.clock() - i.TransitionStart)),
				})
			elseif i.Transition == "Closing" and not i.NestedTransition then
				local j = i:_origin()

				if j then
					i.ReturnPositionTween = i:_tween(i.Modal, {
						Position = UDim2.fromOffset(j.X, j.Y),
					}, {
						Time = math.max(0.01, e.Motion.ModalClose - (os.clock() - i.TransitionStart)),
						Direction = Enum.EasingDirection.In,
					})
				else
					if i.ReturnPositionTween then
						i.ReturnPositionTween:Cancel()
					end
					if i.ReturnScaleTween then
						i.ReturnScaleTween:Cancel()
					end
				end
			else
				i.Modal.Position = UDim2.fromOffset(i.TargetCenter.X, i.TargetCenter.Y)
			end
		end

		local function restoreScroll(i)
			if i.LockedScroll and i.LockedScroll.Parent then
				i.LockedScroll.ScrollingEnabled = i.PreModalScrolling ~= false
			end

			i.LockedScroll, i.PreModalScrolling = nil, nil
		end

		function h.CloseAll(i, j)
			local k = i.ModalStack or {}

			if not j and #k > 0 then
				while #k > 1 do
					k[#k]:Close(true)
				end

				k[1]:Close()

				return
			end

			for l = #k, 1, -1 do
				local m = k[l]

				m.IsOpen = false

				m:_cancelTransition()

				if m.BeforeModalClose then
					m:BeforeModalClose()
				end

				m.Transition = "Closed"
				m.ModalBody.Visible = false

				if m.OnModalClosed then
					m:OnModalClosed()
				end
			end

			i.ModalStack = {}
			i.PreModalFocus = nil

			if i.ActiveDropdown and not i.ActiveDropdown.IsModalController then
				i.ActiveDropdown:Close(true)
			end

			i.ActiveDropdown = nil

			if i.ModalSurface then
				i.ModalSurface.Visible = false
			end

			i.BackDrop.Visible, i.BackDrop.BackgroundTransparency = false, 1

			restoreScroll(i)
		end
		function h.Push(i)
			local j = i.Window

			if j.ActiveSlider then
				j.ActiveSlider:CloseEditor(true)
			end

			local k = j.ModalStack or {}
			local l = i.ParentModal and i.ParentModal.IsOpen and table.find(k, i.ParentModal)

			if l then
				while #k > l do
					k[#k]:Close(true)
				end

				i.ParentModal:_cancelTransition()

				i.ParentModal.Transition = "Open"

				local m = g:GetFocusedTextBox()

				if m and m:IsDescendantOf(i.ParentModal.ModalBody) then
					i.ParentModal.SuspendedFocus = m

					m:ReleaseFocus(false)
				end

				i.ParentModal.ModalBody.Visible = false
				i.ModalScale.Scale, i.Modal.GroupTransparency = 1, 0
			else
				h.CloseAll(j, true)

				k = j.ModalStack
				j.PreModalFocus = g:GetFocusedTextBox()

				if j.PreModalFocus then
					j.PreModalFocus:ReleaseFocus(false)
				end

				j.LockedScroll = j.ActiveTab and j.ActiveTab.Container
				j.PreModalScrolling = j.LockedScroll and j.LockedScroll.ScrollingEnabled

				if j.LockedScroll then
					j.LockedScroll.ScrollingEnabled = false
				end
			end

			i.NestedTransition = l ~= nil

			table.insert(k, i)

			j.ModalStack, j.ActiveDropdown = k, i
			j.BackDrop.Visible = true

			j:HideTooltip()
		end
		function h.Open(i)
			if i.IsLocked or (i.Row and i.Row.LockOverlay) or i.Disposed or i.IsOpen then
				return
			end

			i:_cancelTransition()

			local j = i:_origin()

			h.Push(i)

			local k = i.TransitionToken

			i.IsOpen, i.Transition = true, "Closed"

			i:_syncPopupPosition()

			if i.Disposed or k ~= i.TransitionToken or not i.IsOpen then
				return
			end

			i.ModalBody.Visible, i.ModalBody.Interactable = true, false
			i.ModalBody.GroupTransparency = 1
			i.Modal.Visible, i.Modal.GroupTransparency = true, 0

			if not i.NestedTransition then
				local l = j or i.TargetCenter

				i.Modal.Position = UDim2.fromOffset(l.X, l.Y)
				i.ModalScale.Scale = 0.15
			else
				i.ModalScale.Scale = 1
			end

			i.Transition, i.TransitionStart = "Opening", os.clock()

			if i.OnModalOpening then
				i:OnModalOpening()
			end
			if not i.NestedTransition then
				i:_tween(i.Modal, {
					Position = UDim2.fromOffset(i.TargetCenter.X, i.TargetCenter.Y),
				}, {
					Time = e.Motion.ModalOpen,
				})
			end

			i:_tween(i.Window.BackDrop, { BackgroundTransparency = 0.45 }, {
				Time = e.Motion.ModalOpen,
			})

			local l

			if i.NestedTransition then
				l = i:_tween(i.ModalBody, { GroupTransparency = 0 }, {
					Time = e.Motion.ModalOpen,
				})
			else
				i:_tween(i.ModalBody, { GroupTransparency = 0 }, { Time = 0.08 })

				l = i:_tween(i.ModalScale, { Scale = 1 }, {
					Time = e.Motion.ModalOpen,
				})
			end

			l.Completed:Once(function(m)
				if m == Enum.PlaybackState.Completed and i.TransitionToken == k and i.IsOpen then
					i.Transition, i.ModalBody.Interactable = "Open", true
				end
			end)
		end
		function h.Finish(i)
			local j, k = i.Window, i.Window.ModalStack or {}

			i.Transition = "Closed"
			i.ModalBody.Visible, i.ModalBody.Interactable = false, false

			local l = table.find(k, i)

			if l then
				table.remove(k, l)
			end
			if i.OnModalClosed then
				i:OnModalClosed()
			end

			local m = k[#k]

			j.ActiveDropdown = m

			if m then
				i.Modal.GroupTransparency, i.ModalScale.Scale = 0, 1
				m.ModalBody.Visible, m.ModalBody.Interactable = true, true
				m.ModalBody.GroupTransparency = 0

				m:_syncPopupPosition()

				local n = m.SuspendedFocus

				m.SuspendedFocus = nil

				if n and n.Parent and h.Visible(n) then
					n:CaptureFocus()
				end

				j.BackDrop.BackgroundTransparency = 0.45
			else
				i.Modal.Visible = false
				j.BackDrop.Visible, j.BackDrop.BackgroundTransparency = false, 1

				restoreScroll(j)

				local n = j.PreModalFocus

				j.PreModalFocus = nil

				if n and n.Parent and h.Visible(n) then
					n:CaptureFocus()
				end
			end
		end
		function h.Close(i, j)
			if i.Window.ActiveSlider then
				i.Window.ActiveSlider:CloseEditor(true)
			end
			if i.Disposed or (not i.IsOpen and i.Transition ~= "Closing") then
				return
			end
			if i.Window.ActiveDropdown ~= i then
				h.CloseAll(i.Window, true)

				return
			end
			if i.Transition == "Closing" and not j then
				return
			end

			i.IsOpen = false

			i:_cancelTransition()

			if i.BeforeModalClose then
				i:BeforeModalClose()
			end

			i.ModalBody.Interactable = false

			if j then
				h.Finish(i)

				return
			end

			i.Transition, i.TransitionStart = "Closing", os.clock()

			local k = i.TransitionToken
			local l

			if i.NestedTransition then
				l = i:_tween(i.ModalBody, { GroupTransparency = 1 }, {
					Time = e.Motion.ModalClose,
				})
			else
				local m = i:_origin()

				if m then
					i.ReturnPositionTween = i:_tween(i.Modal, {
						Position = UDim2.fromOffset(m.X, m.Y),
					}, {
						Time = e.Motion.ModalClose,
						Direction = Enum.EasingDirection.In,
					})
					i.ReturnScaleTween = i:_tween(i.ModalScale, { Scale = 0.15 }, {
						Time = e.Motion.ModalClose,
						Direction = Enum.EasingDirection.In,
					})
				end

				i:_tween(i.ModalBody, { GroupTransparency = 1 }, { Time = 0.08 })
				i:_tween(i.Window.BackDrop, { BackgroundTransparency = 1 }, {
					Time = e.Motion.ModalClose,
				})

				l = i:_tween(i.Modal, { GroupTransparency = 1 }, {
					Time = e.Motion.ModalClose,
					Direction = Enum.EasingDirection.In,
				})
			end

			l.Completed:Once(function(m)
				if m == Enum.PlaybackState.Completed and k == i.TransitionToken and not i.IsOpen then
					h.Finish(i)
				end
			end)
		end

		return h
	end
	function a.n()
		local b = a.load("f")
		local c = a.load("a")
		local d = a.load("g")
		local e = a.load("d")
		local f = a.load("j")
		local g = a.load("k")
		local h = a.load("m")
		local i = a.load("h")
		local j = game:GetService("TextService")
		local k = game:GetService("UserInputService")
		local l = {}

		function l.new(m, n: DropdownArgs__DARKLUA_TYPE_d)
			local o = setmetatable({}, { __index = l })

			o.State = f.new()
			o.Label = n.Label
			o.Desc = n.Desc
			o.Values = n.Values or m.Flags
			o.Flag = n.Value
			o.Default = n.Default
			o.Items = n.Items
			o.Icons = table.clone(n.Icons or {})
			o.isMulti = n.isMulti == true
			o.Callback = n.Callback
			o.CallBackWithIndex = n.CallBackWithIndex == true or n.CallbackWithIndex == true
			o.Section = m
			o.Window = m.Tab.Window
			o.IsOpen = false
			o.Transition = "Closed"
			o.TransitionToken = 0
			o.TransitionTweens = {}
			o.Connections = {}
			o.CurrentValue = nil
			o.Searched = false
			o.SearchedEnter = n.SearchedEnter == true or n["Searched.Enter"] == true

			if o.SearchedEnter then
				o.ConfirmText = if n.ConfirmText == nil then "saved" else n.ConfirmText
				o.ConfirmDuration = if type(n.ConfirmDuration) == "number" then n.ConfirmDuration else 1.5
				o.ConfirmToken = 0
			end
			if o.Flag and o.Values then
				o.CurrentValue = o.Values[o.Flag]
			end
			if o.isMulti then
				o.CurrentValue = if type(o.CurrentValue) == "table"
					then o.CurrentValue
					elseif type(o.Default) == "table" then o.Default
					else {}
			else
				o.CurrentValue = if type(o.CurrentValue) == "string"
					then o.CurrentValue
					elseif type(o.Default) == "string" then o.Default
					else ""
			end
			if o.Flag and o.Values then
				o.Values[o.Flag] = o.CurrentValue
			end

			o.Items = o.Items or {}

			o:_build(n)

			return o
		end

		local function visible(m)
			if not m or not m.Parent then
				return false
			end

			local n = m

			while n do
				if n:IsA("GuiObject") and not n.Visible then
					return false
				end
				if n:IsA("ScreenGui") and not n.Enabled then
					return false
				end

				n = n.Parent
			end

			return true
		end

		function l:_build(m: DropdownArgs__DARKLUA_TYPE_d)
			local n = e.getFont("Body")
			local o = Font.new(n.Font, n.Weight, n.Style)
			local p = g.new(self.Section.Container, self.Label, nil)

			self.Row = p

			if not self.isMulti then
				p.TopContainer:SetAttribute("MinimumLabelWidth", 80)
			end

			self.ActionReserve = if m.BtnAction then 34 else 0

			local q = c("Frame", {
				Name = "TriggerSlot",
				Size = UDim2.new(0.5, -8, 0, 28),
				BackgroundTransparency = 1,
				Parent = p.TopContainer,
			})

			self.TriggerButton = c("TextButton", {
				Name = "Trigger",
				AnchorPoint = if m.BtnAction then Vector2.zero else Vector2.new(1, 0.5),
				Position = if m.BtnAction then UDim2.fromScale(0, 0) else UDim2.fromScale(1, 0.5),
				Size = UDim2.fromOffset(100, 28),
				BackgroundColor3 = e.Theme.CardBackgroundColor,
				AutoButtonColor = false,
				Text = "",
				LayoutOrder = 1,
				ZIndex = 10,
				Parent = q,
			})

			b.Corner(999, self.TriggerButton)

			self.TriggerStroke = b.Stroke(1, e.Theme.BorderColor, self.TriggerButton)

			b.XPadding(12, self.TriggerButton)

			if m.BtnAction then
				local r = b.ListLayout(6, Enum.FillDirection.Horizontal, q)

				r.HorizontalAlignment = Enum.HorizontalAlignment.Right
				r.VerticalAlignment = Enum.VerticalAlignment.Center

				local s = m.BtnIcon or "lucide-mouse-pointer-click"
				local t = if string.find(s, "rbxassetid://") then s else i[s]

				if not t then
					t = i["lucide-mouse-pointer-click"]
				end

				local u = c("Frame", {
					Name = "IconButtonWrapper",
					Size = UDim2.fromOffset(28, 28),
					BackgroundTransparency = 1,
					LayoutOrder = 2,
					Parent = q,
				})
				local v = c("TextButton", {
					Name = "IconButton",
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.fromScale(0.5, 0.5),
					Size = UDim2.fromScale(1, 1),
					BackgroundColor3 = e.Theme.CardBackgroundColor,
					AutoButtonColor = false,
					Text = "",
					ZIndex = 12,
					Parent = u,
				})

				b.Corner(e.Surface.ControlRadius, v)

				local w = b.Stroke(1, e.Theme.BorderColor, v)
				local x = c("ImageLabel", {
					Name = "IconLabel",
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.fromScale(0.5, 0.5),
					Size = UDim2.fromOffset(13, 13),
					BackgroundTransparency = 1,
					Image = t,
					ImageColor3 = e.Theme.TextMutedColor,
					ZIndex = 13,
					Parent = v,
				})
				local y = c("UIScale", {
					Scale = 1,
					Parent = v,
				})
				local z = nil
				local A = nil

				local function showTooltip()
					if not m.BtnTooltip or z then
						return
					end

					local B = e.getFont("Body")

					z = c("Frame", {
						Name = "BtnTooltip",
						AutomaticSize = Enum.AutomaticSize.XY,
						BackgroundColor3 = e.Theme.SecondaryColor,
						BackgroundTransparency = 0.15,
						ZIndex = 200,
						Parent = self.Window:GetOverlayParent(),
					})

					b.Corner(e.Surface.ControlRadius, z)

					local C = b.Stroke(1, e.Theme.BorderColor, z)

					b.FullPadding(6, z)

					local D = c("TextLabel", {
						Name = "TooltipText",
						AutomaticSize = Enum.AutomaticSize.XY,
						BackgroundTransparency = 1,
						Text = m.BtnTooltip,
						TextColor3 = e.Theme.TextColor,
						TextSize = B.Size - 3,
						FontFace = Font.new(B.Font, B.Weight, B.Style),
						ZIndex = 201,
						Parent = z,
					})

					local function updatePosition()
						if not z or not v or not v.Parent then
							return
						end

						local E = v.AbsolutePosition
						local F = v.AbsoluteSize
						local G = self.Window:GetOverlayParent()
						local H = G.AbsolutePosition
						local I = E.X + F.X / 2 - H.X
						local J = E.Y - H.Y

						z.AnchorPoint = Vector2.new(0.5, 1)
						z.Position = UDim2.fromOffset(I, J - 6)
					end

					updatePosition()

					A = v:GetPropertyChangedSignal("AbsolutePosition"):Connect(updatePosition)
					z.BackgroundTransparency = 1
					D.TextTransparency = 1
					C.Transparency = 1

					d.Play(z, { BackgroundTransparency = 0.15 })
					d.Play(D, { TextTransparency = 0 })
					d.Play(C, { Transparency = 0 })
				end
				local function hideTooltip()
					if not z then
						return
					end

					local B = z

					z = nil

					if A then
						A:Disconnect()

						A = nil
					end

					local C = B:FindFirstChild("TooltipText")
					local D = B:FindFirstChildOfClass("UIStroke")

					d.Play(B, { BackgroundTransparency = 1 }, { Time = 0.15 })

					if C then
						d.Play(C, { TextTransparency = 1 }, { Time = 0.15 })
					end
					if D then
						d.Play(D, { Transparency = 1 }, { Time = 0.15 })
					end

					task.delay(0.15, function()
						B:Destroy()
					end)
				end

				local B = false

				v.MouseEnter:Connect(function()
					B = true

					d.Play(y, { Scale = 1.08 }, { Time = 0.15 })
					d.Play(w, {
						Color = e.Theme.AccentColor,
					}, { Time = 0.15 })
					d.Play(x, {
						ImageColor3 = e.Theme.AccentColor,
					}, { Time = 0.15 })

					if m.BtnTooltip then
						showTooltip()
					end
				end)
				v.MouseLeave:Connect(function()
					B = false

					d.Play(y, { Scale = 1 }, { Time = 0.15 })
					d.Play(w, {
						Color = e.Theme.BorderColor,
					}, { Time = 0.15 })
					d.Play(x, {
						ImageColor3 = e.Theme.TextMutedColor,
					}, { Time = 0.15 })

					if m.BtnTooltip then
						hideTooltip()
					end
				end)
				b.TouchTarget(v, function()
					if not self.IsLocked and m.BtnAction then
						m.BtnAction(self)
					end
				end)
				v.MouseButton1Click:Connect(function()
					if self.IsLocked then
						return
					end

					y.Scale = 0.8

					local C = if B then 1.08 else 1

					d.Play(y, { Scale = C }, {
						Time = 0.2,
						Style = Enum.EasingStyle.Back,
						Direction = Enum.EasingDirection.Out,
					})

					if m.BtnAction then
						m.BtnAction(self)
					end
				end)
				v.Destroying:Connect(function()
					if z then
						z:Destroy()

						z = nil
					end
				end)
			end

			self.ValueLabel = c("TextLabel", {
				Name = "ValueLabel",
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				Text = "",
				TextColor3 = e.Theme.TextColor,
				TextSize = if self.isMulti then 12 else 11,
				TextTruncate = Enum.TextTruncate.AtEnd,
				FontFace = o,
				ZIndex = 11,
				Parent = self.TriggerButton,
			})

			self.TriggerButton.MouseEnter:Connect(function()
				d.Play(self.TriggerButton, {
					BackgroundColor3 = e.Theme.SecondaryHoverColor,
				}, {
					Time = e.Motion.Interaction,
				})
			end)
			self.TriggerButton.MouseLeave:Connect(function()
				d.Play(self.TriggerButton, {
					BackgroundColor3 = e.Theme.CardBackgroundColor,
				}, {
					Time = e.Motion.Interaction,
				})
			end)
			b.TouchTarget(self.TriggerButton, function()
				self:Toggle()
			end)
			self.TriggerButton.Activated:Connect(function()
				self:Toggle()
			end)
			p.TopContainer:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
				self:_renderValue()
			end)
			h.Create(self, self.TriggerButton)

			self.SearchBox = c("TextBox", {
				Name = "Search",
				Text = "",
				PlaceholderText = "Search available...",
				ClearTextOnFocus = false,
				TextSize = 12,
				FontFace = o,
				TextColor3 = e.Theme.TextColor,
				PlaceholderColor3 = e.Theme.TextMutedColor,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = e.Theme.CardBackgroundColor,
				ZIndex = 102,
				Parent = self.ModalBody,
			})

			b.XPadding(12, self.SearchBox)
			b.Corner(e.Surface.ControlRadius, self.SearchBox)
			b.Stroke(1, e.Theme.BorderColor, self.SearchBox)

			self.ConfirmLabel = c("TextLabel", {
				Name = "SearchConfirmation",
				Text = "",
				TextSize = 10,
				FontFace = o,
				TextColor3 = e.Theme.SuccessColor,
				BackgroundTransparency = 1,
				Visible = false,
				TextXAlignment = Enum.TextXAlignment.Right,
				Size = UDim2.fromOffset(64, 28),
				ZIndex = 104,
				Parent = self.ModalBody,
			})
			self.Popup = c("ScrollingFrame", {
				Name = self.Label .. "DropdownPopup",
				Visible = false,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				CanvasSize = UDim2.fromOffset(0, 0),
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ScrollBarThickness = 3,
				ScrollBarImageColor3 = e.Theme.AccentColor,
				Active = true,
				ZIndex = 102,
				Parent = self.ModalBody,
			})
			self.PopupLayout = b.ListLayout(12, Enum.FillDirection.Vertical, self.Popup)

			local function group(r, s, t)
				local u = c("Frame", {
					Name = r .. "Section",
					Size = UDim2.new(1, -4, 0, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					LayoutOrder = s,
					ZIndex = 103,
					Parent = self.Popup,
				})

				b.ListLayout(6, Enum.FillDirection.Vertical, u)
				c("TextLabel", {
					Name = "Title",
					Text = r,
					TextSize = 12,
					FontFace = o,
					TextColor3 = e.Theme.TextMutedColor,
					TextXAlignment = Enum.TextXAlignment.Left,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 18),
					LayoutOrder = 1,
					ZIndex = 103,
					Parent = u,
				})

				local v = c("Frame", {
					Name = r,
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundColor3 = e.Theme.CardBackgroundColor,
					BorderSizePixel = 0,
					LayoutOrder = 2,
					ZIndex = 103,
					Parent = u,
				})

				b.Corner(e.Surface.Radius, v)

				local w = b.Stroke(1, e.Theme.BorderColor, v)

				w.Transparency = e.Surface.Border

				local x = b.ListLayout(0, Enum.FillDirection.Vertical, v)
				local y = c("TextLabel", {
					Name = "Empty",
					Text = t,
					TextSize = 12,
					FontFace = o,
					TextColor3 = e.Theme.TextMutedColor,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, if k.TouchEnabled then 44 else 32),
					LayoutOrder = 1000000,
					ZIndex = 104,
					Parent = v,
				})

				x:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
					self:_updatePopupCanvas()
				end)

				return v, y
			end

			self.SelectedGroup, self.SelectedEmpty = group("Selected", 1, "Nothing selected")
			self.AvailableGroup, self.EmptyLabel = group("Available", 2, "No items available")
			self.ItemButtons = {}

			self:_mountItems()
			self:_renderValue()
			self:_renderTrigger()
			self.PopupLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				self:_updatePopupCanvas()
			end)
			self.SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
				self:_filterItems(self.SearchBox.Text)
			end)
			self.SearchBox.FocusLost:Connect(function(r)
				if r then
					self:_submitSearch()
				end
				if self.IsOpen then
					self:_syncPopupPosition()
				end
			end)
			self.SearchBox.Focused:Connect(function()
				task.defer(function()
					if self.IsOpen then
						self:_syncPopupPosition()
					end
				end)
			end)
			self.Popup.InputBegan:Connect(function(r)
				if r.UserInputType == Enum.UserInputType.Touch and self.SearchBox:IsFocused() then
					self.SearchBox:ReleaseFocus(false)
				end
			end)

			for r, s in ipairs({
				"OnScreenKeyboardVisible",
				"OnScreenKeyboardSize",
				"OnScreenKeyboardPosition",
			}) do
				table.insert(
					self.Connections,
					k:GetPropertyChangedSignal(s):Connect(function()
						if self.IsOpen then
							self:_syncPopupPosition()
						end
					end)
				)
			end

			local r = self.TriggerButton

			while r and r ~= self.Window.Screen do
				if r:IsA("GuiObject") then
					table.insert(
						self.Connections,
						r:GetPropertyChangedSignal("Visible"):Connect(function()
							if
								self.IsOpen
								and not h.Visible(self.TriggerButton, self.ParentModal and self.ParentModal.ModalBody)
							then
								self:Close()
							elseif
								self.Transition == "Closing"
								and not h.Visible(self.TriggerButton, self.ParentModal and self.ParentModal.ModalBody)
							then
								self:_syncPopupPosition()
							end
						end)
					)
				end

				r = r.Parent
			end

			if self.Window.Screen:IsA("ScreenGui") then
				table.insert(
					self.Connections,
					self.Window.Screen:GetPropertyChangedSignal("Enabled"):Connect(function()
						if self.IsOpen and not self.Window.Screen.Enabled then
							self:Close(true)
						end
					end)
				)
			end

			p.RowContainer.Destroying:Connect(function()
				self:Close(true)

				self.Disposed = true

				for s, t in ipairs(self.Connections) do
					t:Disconnect()
				end

				self.ModalBody:Destroy()
			end)
			self.TriggerButton:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
				if self.IsOpen or self.Transition == "Closing" then
					self:_syncPopupPosition()
				end
			end)
			self.TriggerButton.AncestryChanged:Connect(function()
				if
					self.IsOpen and not h.Visible(self.TriggerButton, self.ParentModal and self.ParentModal.ModalBody)
				then
					self:Close()
				elseif self.Transition == "Closing" then
					self:_syncPopupPosition()
				end
			end)
		end
		function l:_isSelected(m)
			return if self.isMulti
				then type(self.CurrentValue) == "table" and table.find(self.CurrentValue, m) ~= nil
				else self.CurrentValue == m
		end
		function l:_filterItems(m: string)
			if self.Disposed then
				return
			end

			local n = string.lower(m or "")
			local o, p = {}, {}

			for q, r in ipairs(self.Items) do
				local s = self.ItemButtons[r]

				if s then
					local t = self:_isSelected(r)

					s.IsSelected = t
					s.Button.Parent = if t then self.SelectedGroup else self.AvailableGroup
					s.Button.LayoutOrder = q
					s.Button.Visible = t or n == "" or string.find(string.lower(r), n, 1, true) ~= nil
					s.RemoveButton.Visible = t and self.isMulti
					s.Check.Text = if t and not self.isMulti then "\u{2713}" else ""
					s.Title.TextColor3 = if t then e.Theme.AccentColor else e.Theme.TextColor

					local u = if t and not self.isMulti then 28 else 10
					local v = if t and self.isMulti then s.RemoveButton.Size.X.Offset + 10 else 10

					if s.Icon then
						s.Icon.Position = UDim2.new(0, u, 0.5, 0)

						u += 24
					end

					s.Title.Position = UDim2.fromOffset(u, 0)
					s.Title.Size = UDim2.new(1, -u - v, 1, 0)
					s.Divider.Visible = false

					if s.Button.Visible then
						table.insert(if t then o else p, s)
					end
				end
			end
			for q, r in ipairs({ o, p }) do
				for s, t in ipairs(r) do
					t.Divider.Visible = s < #r
				end
			end

			self.SelectedEmpty.Visible = #o == 0
			self.EmptyLabel.Visible = #p == 0
			self.EmptyLabel.Text = if #self.Items == 0
				then "No items available"
				elseif #o == #self.Items then "All items selected"
				else "No results"

			self:_updatePopupCanvas()
		end
		function l:_showConfirm()
			if self.ConfirmText == "" then
				return
			end

			self.ConfirmToken += 1

			local m = self.ConfirmToken

			self.ConfirmUntil = os.clock() + self.ConfirmDuration

			self:_updateSelection()
			task.delay(self.ConfirmDuration, function()
				if m == self.ConfirmToken and not self.Disposed then
					self:_updateSelection()
				end
			end)
		end
		function l:_submitSearch()
			if not self.IsOpen or self.IsLocked then
				return
			end

			local m = self.SearchBox.Text

			if table.find(self.Items, m) then
				if not self:_isSelected(m) then
					self:_selectItem(m)
				end
			elseif self.SearchedEnter and string.find(m, "%S") then
				self:Insert(m)
				self:_selectItem(m)
				self:_showConfirm()
			end
			if self.isMulti then
				self.SearchBox.Text = ""
			end
		end
		function l:_getCallbackValue(m: any)
			if not self.CallBackWithIndex then
				return m
			end
			if m == nil then
				return nil
			end
			if self.isMulti then
				if type(m) ~= "table" then
					return {}
				end

				local n = {}

				for o, p in ipairs(m) do
					local q = table.find(self.Items or {}, p)

					if q then
						table.insert(n, q)
					end
				end

				return n
			else
				return table.find(self.Items or {}, m)
			end
		end
		function l:_commitValue(m: any)
			self.CurrentValue = m

			if self.Flag and self.Values then
				self.Values[self.Flag] = m
			end

			self:_renderValue()
			self:_renderItems()
			self:_updateSelection()
			self.State:Fire(self:_getCallbackValue(m))

			if self.Callback then
				self.Callback(self:_getCallbackValue(m))
			end
		end
		function l:_mountItems()
			for m, n in ipairs(self.Items) do
				self:_addItemButton(n, e.getFont("Body"))
			end

			self:_renderItems()
		end
		function l:_addItemButton(m: string, n)
			if self.ItemButtons[m] then
				return
			end

			local o = Font.new(n.Font, n.Weight, n.Style)
			local p = c("TextButton", {
				Name = m,
				Text = "",
				AutoButtonColor = false,
				Size = UDim2.new(1, 0, 0, if k.TouchEnabled then 44 else 32),
				BackgroundColor3 = e.Theme.PrimaryHoverColor,
				BackgroundTransparency = 1,
				ZIndex = 104,
				Parent = self.AvailableGroup,
			})
			local q = c("TextLabel", {
				Name = "Check",
				Text = "",
				TextSize = 12,
				FontFace = o,
				TextColor3 = e.Theme.AccentColor,
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(14, if k.TouchEnabled then 44 else 32),
				Position = UDim2.fromOffset(10, 0),
				ZIndex = 105,
				Parent = p,
			})
			local r = self.Icons[m]
			local s = if r
				then c("ImageLabel", {
					Name = "Icon",
					AnchorPoint = Vector2.new(0, 0.5),
					Size = UDim2.fromOffset(18, 18),
					BackgroundTransparency = 1,
					Image = i[r] or r,
					ImageColor3 = if i[r] then e.Theme.TextColor else Color3.new(1, 1, 1),
					ScaleType = Enum.ScaleType.Fit,
					ZIndex = 105,
					Parent = p,
				})
				else nil
			local t = c("TextLabel", {
				Name = "Title",
				Text = m,
				TextSize = 12,
				FontFace = o,
				TextColor3 = e.Theme.TextColor,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, -76, 1, 0),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextTruncate = Enum.TextTruncate.AtEnd,
				Position = UDim2.fromOffset(28, 0),
				ZIndex = 105,
				Parent = p,
			})
			local u = c("TextButton", {
				Name = "Remove",
				Text = "\u{d7}",
				TextSize = 20,
				TextColor3 = e.Theme.TextMutedColor,
				Size = UDim2.fromOffset(if k.TouchEnabled then 44 else 32, if k.TouchEnabled then 44 else 32),
				Position = UDim2.new(1, if k.TouchEnabled then -44 else -32, 0, 0),
				BackgroundTransparency = 1,
				AutoButtonColor = false,
				Visible = false,
				ZIndex = 106,
				Parent = p,
			})
			local v = c("Frame", {
				Name = "Divider",
				Size = UDim2.new(1, -20, 0, 1),
				Position = UDim2.new(0, 10, 1, -1),
				BackgroundColor3 = e.Theme.BorderColor,
				BackgroundTransparency = e.Surface.Border,
				BorderSizePixel = 0,
				Visible = false,
				ZIndex = 105,
				Parent = p,
			})

			self.ItemButtons[m] = {
				Button = p,
				Check = q,
				Icon = s,
				Title = t,
				RemoveButton = u,
				Divider = v,
			}

			p.Activated:Connect(function()
				if self.Transition == "Open" and not self:_isSelected(m) then
					self:_selectItem(m)
				end
			end)
			u.Activated:Connect(function()
				if self.Transition == "Open" and self.isMulti and self:_isSelected(m) then
					self:_selectItem(m)
				end
			end)
			p.MouseEnter:Connect(function()
				d.Play(p, { BackgroundTransparency = 0.4 })
			end)
			p.MouseLeave:Connect(function()
				d.Play(p, { BackgroundTransparency = 1 })
			end)
		end
		function l:IsPointInside(m: Vector2)
			local n, o = self.Modal.AbsolutePosition, self.Modal.AbsoluteSize

			return self.Modal.Visible and m.X >= n.X and m.X <= n.X + o.X and m.Y >= n.Y and m.Y <= n.Y + o.Y
		end
		function l:_selectItem(m: string)
			if self.IsLocked or not self.IsOpen then
				return
			end
			if self.isMulti then
				local n = if type(self.CurrentValue) == "table" then self.CurrentValue else {}
				local o = {}
				local p = false

				for q, r in ipairs(n) do
					if r == m then
						p = true
					else
						table.insert(o, r)
					end
				end

				if not p then
					table.insert(o, m)
				end

				self:_commitValue(o)
			else
				self:_commitValue(m)
				self:Close()
			end
		end

		local function textBounds(m, n, o)
			local p = Instance.new("GetTextBoundsParams")

			p.Font, p.Text, p.Size, p.Width = m.FontFace, n, m.TextSize, o

			local q, r = pcall(function()
				return j:GetTextBoundsAsync(p)
			end)

			p:Destroy()

			return if q then r else j:GetTextSize(n, m.TextSize, Enum.Font.Gotham, Vector2.new(o, 10000))
		end

		function l:_renderValue()
			local m = if self.isMulti
				then "Selected " .. tostring(if type(self.CurrentValue) == "table" then #self.CurrentValue else 0)
				else (if type(self.CurrentValue) == "string" and self.CurrentValue ~= ""
					then self.CurrentValue
					else "Select\u{2026}")

			self.ValueLabel.Text = m

			if self.MeasuredText ~= m then
				self.MeasuredText = m
				self.MeasuredWidth = j:GetTextSize(m, 12, Enum.Font.Gotham, Vector2.new(10000, 10000)).X + 28

				local n = textBounds(self.ValueLabel, m, 10000).X + 28

				if self.Disposed or self.MeasuredText ~= m then
					return
				end

				self.MeasuredWidth = n
			end

			local n = self.MeasuredWidth
			local o = self.Row.TopContainer.AbsoluteSize.X / b.LayoutScale(self.Row.TopContainer)
			local p = 100
			local q = if o > 0 then math.max(1, math.min(p, o * 0.4, o - self.ActionReserve)) else p

			self.TriggerButton.Size = UDim2.fromOffset(math.min(q, math.max(64, n)), 28)
		end
		function l:_renderItems()
			self:_filterItems(if self.SearchBox then self.SearchBox.Text else "")
		end
		function l:_renderTrigger()
			self.TriggerStroke.Color = if self.IsOpen then e.Theme.AccentColor else e.Theme.BorderColor
		end
		function l:_updateSelection()
			if not self.ConfirmLabel then
				return
			end

			self.ConfirmLabel.Visible = self.ConfirmUntil ~= nil and os.clock() < self.ConfirmUntil
			self.ConfirmLabel.Text = self.ConfirmText or ""
		end
		function l:_updatePopupCanvas()
			if self.Disposed or not self.PopupLayout then
				return
			end

			local m = self.PopupLayout.AbsoluteContentSize.Y / b.LayoutScale(self.Popup) + 4

			self.Popup.CanvasSize = UDim2.fromOffset(0, m)
			self.Popup.ScrollingEnabled = m > self.Popup.AbsoluteSize.Y / b.LayoutScale(self.Popup)

			self:_updateSelection()
		end
		function l:_syncPopupPosition()
			if self.Disposed then
				return
			end

			local m, n = h.Geometry(self)
			local o = k.TouchEnabled
			local p = if o then 44 else 36

			if self.DescriptionWidth ~= m then
				self.DescriptionWidth = m
				self.DescriptionHeight = if self.Desc and self.Desc ~= ""
					then textBounds(self.ModalDescription, self.Desc, math.max(1, m - 24)).Y + 4
					else 0
			end

			local q = if self.Desc and self.Desc ~= "" then self.DescriptionHeight or 0 else 0
			local r = n < 210

			q = if r then 0 else math.min(q, math.max(0, n - 190))

			local s = if o then 44 else 28
			local t = p + 24 + q

			self.ModalClose.Position = UDim2.fromOffset(12, 12)
			self.ModalClose.Size = UDim2.fromOffset(p, p)
			self.ModalTitle.Position = UDim2.fromOffset(p + 22, 12)
			self.ModalTitle.Size = UDim2.new(1, -p - 34, 0, p)
			self.ModalDescription.Visible = q > 0
			self.ModalDescription.Position = UDim2.fromOffset(12, p + 18)
			self.ModalDescription.Size = UDim2.new(1, -24, 0, q)
			self.SearchBox.Position = UDim2.fromOffset(12, t)
			self.SearchBox.Size = UDim2.new(1, -24, 0, s)
			self.Popup.Position = UDim2.fromOffset(12, t + s + 12)
			self.Popup.Size = UDim2.new(1, -24, 0, math.max(1, n - t - s - 24))
			self.ConfirmLabel.Position = UDim2.fromOffset(m - 82, t)

			if n < 160 then
				local u = math.min(32, math.max(16, n / 3))

				self.ModalTitle.Visible = false
				self.ModalClose.Position = UDim2.fromOffset(8, 4)
				self.ModalClose.Size = UDim2.fromOffset(u, u)
				self.SearchBox.Position = UDim2.fromOffset(u + 16, 4)
				self.SearchBox.Size = UDim2.new(1, -u - 24, 0, u)
				self.Popup.Position = UDim2.fromOffset(8, u + 12)
				self.Popup.Size = UDim2.new(1, -16, 0, math.max(1, n - u - 20))
			else
				self.ModalTitle.Visible = true
			end

			h.Retarget(self)
			self:_updatePopupCanvas()
		end
		function l:OnModalOpening()
			self.Popup.Visible = true

			self:_filterItems(self.SearchBox.Text)
			self:_renderTrigger()
		end
		function l:BeforeModalClose()
			if self.SearchBox:IsFocused() then
				self.SearchBox:ReleaseFocus(false)
			end

			self.SearchBox.Text = ""

			self:_renderTrigger()
		end
		function l:OnModalClosed()
			self.Popup.Visible = false

			self:_renderTrigger()
		end
		function l:Toggle()
			if self.IsOpen then
				self:Close()
			else
				self:Open()
			end
		end
		function l:GetSelectedIndex()
			if self.isMulti then
				local m = {}
				local n = if type(self.CurrentValue) == "table" then self.CurrentValue else {}

				for o, p in ipairs(n) do
					local q = table.find(self.Items or {}, p)

					if q then
						table.insert(m, q)
					end
				end

				return m
			else
				if self.CurrentValue == nil or self.CurrentValue == "" then
					return nil
				end

				return table.find(self.Items or {}, self.CurrentValue)
			end
		end
		function l:SetSelectedIndex(m: number | { number })
			if self.isMulti then
				local n = {}
				local o = if type(m) == "table" then m else { m }

				for p, q in ipairs(o) do
					local r = self.Items[q]

					if r then
						table.insert(n, r)
					end
				end

				self:_commitValue(n)
			else
				local n = self.Items[m]

				if n then
					self:_commitValue(n)
				else
					self:_commitValue("")
				end
			end
		end
		function l:OnChange(m: () -> ())
			self.State:Add(m)

			local n = if self.isMulti
				then type(self.CurrentValue) == "table" and #self.CurrentValue > 0
				else type(self.CurrentValue) == "string" and self.CurrentValue ~= ""

			if n then
				task.defer(m, self:_getCallbackValue(self.CurrentValue))
			end
		end
		function l:Insert(m: any, n: string?)
			self.Items = self.Items or {}

			local o = tostring(m)

			if table.find(self.Items, o) then
				return
			end

			table.insert(self.Items, o)

			self.Icons[o] = n or self.Icons[o]

			self:_addItemButton(o, e.getFont("Body"))
			self:_renderItems()
			self:_filterItems(self.SearchBox.Text)
			task.defer(function()
				if not self.Modal.Parent then
					return
				end

				self:_filterItems(self.SearchBox.Text)

				if self.IsOpen then
					self:_syncPopupPosition()
				end
			end)
		end
		function l:Remove(m: any)
			if not self.Items then
				return
			end

			for n, o in ipairs(self.Items) do
				if o == m then
					table.remove(self.Items, n)

					break
				end
			end

			local n = tostring(m)

			self.Icons[n] = nil

			if self.ItemButtons[n] then
				self.ItemButtons[n].Button:Destroy()

				self.ItemButtons[n] = nil
			end
			if self.isMulti then
				local o = if type(self.CurrentValue) == "table" then self.CurrentValue else {}
				local p = {}

				for q, r in ipairs(o) do
					if r ~= n then
						table.insert(p, r)
					end
				end

				self:_commitValue(p)
			elseif self.CurrentValue == n then
				self:_commitValue("")
			end

			task.defer(function()
				if not self.Modal.Parent then
					return
				end

				self:_filterItems(self.SearchBox.Text)

				if self.IsOpen then
					self:_syncPopupPosition()
				end
			end)
		end
		function l:Clear()
			self.Items = {}
			self.Icons = {}

			for m, n in pairs(self.ItemButtons) do
				n.Button:Destroy()
			end

			self.ItemButtons = {}

			self:_commitValue(self.isMulti and {} or "")
			self:Close()
			self:_filterItems(self.SearchBox.Text)
		end
		function l:Refresh(m: { string }, n: (string | { string })?, o: { [string]: string }?)
			for p, q in pairs(self.ItemButtons) do
				q.Button:Destroy()
			end

			self.ItemButtons = {}
			self.Items = {}

			local p = o or self.Icons

			self.Icons = {}

			local q = e.getFont("Body")

			for r, s in ipairs(m) do
				local t = tostring(s)

				table.insert(self.Items, t)

				self.Icons[t] = p[t]

				self:_addItemButton(t, q)
			end

			if n ~= nil then
				self:_commitValue(n)
			else
				if self.isMulti then
					local r = if type(self.CurrentValue) == "table" then self.CurrentValue else {}
					local s = {}

					for t, u in ipairs(r) do
						if table.find(self.Items, u) then
							table.insert(s, u)
						end
					end

					self:_commitValue(s)
				else
					if not table.find(self.Items, self.CurrentValue) then
						self:_commitValue("")
					else
						self:_renderValue()
					end
				end
			end

			self:_renderItems()
			task.defer(function()
				if not self.Modal.Parent then
					return
				end

				self:_filterItems(self.SearchBox.Text)

				if self.IsOpen then
					self:_syncPopupPosition()
				end
			end)
		end
		function l:Lock(m: string)
			if self.IsLocked then
				return
			end

			self.IsLocked = true
			self.PreLockValue = self.CurrentValue
			self.CurrentValue = nil

			if self.Flag and self.Values then
				self.Values[self.Flag] = nil
			end
			if self.IsOpen then
				self:Close()
			end

			self:_renderValue()
			self.State:Fire(nil)

			if self.Callback then
				self.Callback(nil)
			end
			if self.Row then
				self.Row:Lock(m)
			end
		end
		function l:UnLock()
			if not self.IsLocked then
				return
			end

			self.IsLocked = false

			local m = self.PreLockValue

			self.CurrentValue = m

			if self.Flag and self.Values then
				self.Values[self.Flag] = m
			end

			self:_renderValue()
			self.State:Fire(self:_getCallbackValue(m))

			if self.Callback then
				self.Callback(self:_getCallbackValue(m))
			end
			if self.Row then
				self.Row:UnLock()
			end
		end
		function l:AddDisclosure()
			return self.Row:CreateDisclosure(self.Section)
		end

		return l
	end
	function a.o()
		local b = game:GetService("UserInputService")
		local c = a.load("f")
		local d = a.load("a")
		local e = a.load("g")
		local f = a.load("d")
		local g = a.load("j")
		local h = a.load("k")
		local i = a.load("m")
		local j = {}

		function j.new(k, l: SliderArgs__DARKLUA_TYPE_e)
			local m = setmetatable({}, { __index = j })

			m.State = g.new()
			m.Section = k
			m.Label = l.Label
			m.Desc = l.Desc
			m.Values = l.Values or k.Flags
			m.Flag = if type(l.Value) == "string" then l.Value else nil
			m.Min = l.Min
			m.Max = l.Max
			m.Step = math.max(l.Step or 1, 0.001)
			m.Suffix = l.Suffix or ""
			m.Callback = l.Callback
			m.Default = if type(l.Default) == "number" then l.Default else m.Min
			m.Value = m.Default
			m.IsDragging = false

			if m.Flag and m.Values then
				local n = m.Values[m.Flag]

				m.Value = if type(n) == "number" then n else m.Default
				m.Values[m.Flag] = m.Value
			else
				m.Value = if type(l.Value) == "number" then l.Value else m.Default
			end

			m:_clampValue()

			if m.Flag and m.Values then
				m.Values[m.Flag] = m.Value
			end

			m:_build()

			return m
		end
		function j:_clampValue()
			self.Value = math.clamp(self.Value, self.Min, self.Max)
			self.Value = self:_roundToStep(self.Value)
		end
		function j:_roundToStep(k: number)
			local l = math.round((k - self.Min) / self.Step) * self.Step + self.Min

			l = math.clamp(l, self.Min, self.Max)

			local m = if self.Step >= 1 then 0 else math.ceil(math.abs(math.log10(self.Step)))

			return tonumber(string.format("%." .. tostring(math.clamp(m, 0, 4)) .. "f", l)) or l
		end
		function j:_formatValue(k: number)
			if not k then
				return ""
			end

			local l = if math.floor(k) == k then tostring(math.floor(k)) else tostring(k)

			return l .. self.Suffix
		end
		function j:_getAlphaFromValue()
			if not self.Value or self.Max == self.Min then
				return 0
			end

			return (self.Value - self.Min) / (self.Max - self.Min)
		end
		function j:_build()
			local k = f.getFont("Body")
			local l = Font.new(k.Font, k.Weight, k.Style)

			self.Window = self.Section.Tab.Window
			self.Row = h.new(self.Section.Container, self.Label, self.Desc)
			self.OwnerRow = if self.Section.IsMany then self.Section.Row.RowContainer else self.Row.RowContainer
			self.Connections = {}
			self.Editor = {
				TransitionToken = 0,
				TransitionTweens = {},
				_cancelTransition = i.Cancel,
				_tween = i.Tween,
			}

			local m = d("Frame", {
				Name = "SliderValueSlot",
				Size = UDim2.fromOffset(64, 28),
				BackgroundTransparency = 1,
				Parent = self.Row.TopContainer,
			})

			self.TriggerButton = d("TextButton", {
				Name = "SliderValue",
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.fromScale(1, 0.5),
				Size = UDim2.fromOffset(64, 28),
				Text = "",
				AutoButtonColor = false,
				BackgroundColor3 = f.Theme.CardBackgroundColor,
				Parent = m,
			})

			c.Corner(999, self.TriggerButton)
			c.Stroke(1, f.Theme.BorderColor, self.TriggerButton)

			self.ValueLabel = d("TextLabel", {
				Name = "Value",
				Size = UDim2.fromScale(1, 1),
				Text = "",
				TextSize = 11,
				FontFace = l,
				TextColor3 = f.Theme.TextColor,
				TextTruncate = Enum.TextTruncate.AtEnd,
				BackgroundTransparency = 1,
				Parent = self.TriggerButton,
			})

			c.XPadding(10, self.TriggerButton)

			self.EditorFrame = d("CanvasGroup", {
				Name = self.Label .. "Editor",
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundColor3 = f.Theme.GroupColor,
				BorderSizePixel = 0,
				ClipsDescendants = true,
				Visible = false,
				Active = true,
				ZIndex = 120,
				Parent = self.Window:GetOverlayParent(),
			})

			c.Corner(f.Surface.ControlRadius, self.EditorFrame)
			c.Stroke(1, f.Theme.BorderColor, self.EditorFrame)

			self.EditorScale = d("UIScale", {
				Parent = self.EditorFrame,
			})
			self.EditorBody = d("CanvasGroup", {
				Name = "EditorBody",
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ZIndex = 121,
				Parent = self.EditorFrame,
			})
			self.ValueBox = d("TextBox", {
				Name = "ValueInput",
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -12, 0.5, 0),
				Size = UDim2.fromOffset(64, 26),
				BackgroundColor3 = f.Theme.CardBackgroundColor,
				Text = "",
				TextSize = 11,
				FontFace = l,
				TextColor3 = f.Theme.TextColor,
				ClearTextOnFocus = false,
				TextXAlignment = Enum.TextXAlignment.Center,
				ZIndex = 123,
				Parent = self.EditorBody,
			})

			c.Corner(f.Surface.ControlRadius, self.ValueBox)
			c.Stroke(1, f.Theme.BorderColor, self.ValueBox)
			c.TouchTarget(self.ValueBox, function()
				if self.IsEditorOpen and not self.IsLocked then
					self.ValueBox:CaptureFocus()
				end
			end)

			self.TrackButton = d("TextButton", {
				Name = "TrackButton",
				Size = UDim2.new(1, -100, 1, 0),
				Position = UDim2.fromOffset(12, 0),
				BackgroundTransparency = 1,
				Text = "",
				AutoButtonColor = false,
				ZIndex = 122,
				Parent = self.EditorBody,
			})
			self.Track = d("Frame", {
				Name = "Track",
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.fromScale(0, 0.5),
				Size = UDim2.new(1, 0, 0, 6),
				BackgroundColor3 = f.Theme.BorderColor,
				BorderSizePixel = 0,
				ZIndex = 122,
				Parent = self.TrackButton,
			})

			c.Corner(999, self.Track)

			self.Fill = d("Frame", {
				Name = "Fill",
				Size = UDim2.fromScale(0, 1),
				BackgroundColor3 = f.Theme.AccentColor,
				BorderSizePixel = 0,
				ZIndex = 123,
				Parent = self.Track,
			})

			c.Corner(999, self.Fill)

			self.Knob = d("TextButton", {
				Name = "Knob",
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0, 0.5),
				Size = UDim2.fromOffset(16, 16),
				Text = "",
				AutoButtonColor = false,
				BackgroundColor3 = f.Theme.White,
				ZIndex = 124,
				Parent = self.Track,
			})

			c.Corner(999, self.Knob)
			self.TriggerButton.Activated:Connect(function()
				self:OpenEditor()
			end)
			c.TouchTarget(self.TriggerButton, function()
				self:OpenEditor()
			end)

			local function begin(n)
				if self.IsLocked or not self.IsEditorOpen or self.EditorTransition ~= "Open" then
					return
				end
				if
					n.UserInputType ~= Enum.UserInputType.MouseButton1
					and n.UserInputType ~= Enum.UserInputType.Touch
				then
					return
				end

				self.DragInput, self.IsDragging = n, true

				self:_setValueFromPosition(n.Position.X)
			end

			self.TrackButton.InputBegan:Connect(begin)
			self.Knob.InputBegan:Connect(begin)
			table.insert(
				self.Connections,
				b.InputChanged:Connect(function(n)
					if
						self.IsDragging
						and not self.IsLocked
						and (
							n == self.DragInput
							or (
								self.DragInput
								and self.DragInput.UserInputType == Enum.UserInputType.MouseButton1
								and n.UserInputType == Enum.UserInputType.MouseMovement
							)
						)
					then
						self:_setValueFromPosition(n.Position.X)
					end
				end)
			)
			table.insert(
				self.Connections,
				b.InputEnded:Connect(function(n)
					if self.IsDragging and n == self.DragInput then
						self.IsDragging, self.DragInput = false, nil

						self:CloseEditor()
					end
				end)
			)
			table.insert(
				self.Connections,
				b.InputBegan:Connect(function(n)
					if not self.IsEditorOpen then
						return
					end
					if n.KeyCode == Enum.KeyCode.Escape then
						self:CloseEditor()

						return
					end
					if
						n.UserInputType == Enum.UserInputType.MouseButton1
						or n.UserInputType == Enum.UserInputType.Touch
					then
						local o = Vector2.new(n.Position.X, n.Position.Y)
						local p, q = self.EditorFrame.AbsolutePosition, self.EditorFrame.AbsoluteSize

						if o.X < p.X or o.X > p.X + q.X or o.Y < p.Y or o.Y > p.Y + q.Y then
							self:CloseEditor()
						end
					end
				end)
			)
			table.insert(
				self.Connections,
				b.WindowFocusReleased:Connect(function()
					self:CloseEditor(true)
				end)
			)
			self.ValueBox.FocusLost:Connect(function()
				if not self.IsEditorOpen or self.IsLocked then
					return
				end

				self:_commitText(self.ValueBox.Text)
				self:CloseEditor()
			end)

			local function sync()
				if self.IsEditorOpen then
					self:_syncEditor()
				end
			end

			table.insert(self.Connections, self.OwnerRow:GetPropertyChangedSignal("AbsolutePosition"):Connect(sync))
			table.insert(self.Connections, self.OwnerRow:GetPropertyChangedSignal("AbsoluteSize"):Connect(sync))

			local n = self.OwnerRow

			while n and n ~= self.Window.Screen do
				if n:IsA("GuiObject") then
					table.insert(
						self.Connections,
						n:GetPropertyChangedSignal("Visible"):Connect(function()
							if self.IsEditorOpen and not i.Visible(self.OwnerRow) then
								self:CloseEditor(true)
							end
						end)
					)
				end

				n = n.Parent
			end

			table.insert(
				self.Connections,
				self.Window.Screen:GetPropertyChangedSignal("Enabled"):Connect(function()
					if not self.Window.Screen.Enabled then
						self:CloseEditor(true)
					end
				end)
			)
			self.Row.RowContainer.Destroying:Connect(function()
				self:CloseEditor(true)

				self.Disposed = true

				for o, p in ipairs(self.Connections) do
					p:Disconnect()
				end

				self.EditorFrame:Destroy()
			end)
			self:_render()
		end
		function j:_syncEditor()
			local k = self.Window:GetOverlayParent()
			local l, m = self.OwnerRow.AbsolutePosition, self.OwnerRow.AbsoluteSize
			local n = if self.Section.ModalOwner then self.Section.ModalOwner.Scroll else self.Window.Container
			local o, p = n.AbsolutePosition, n.AbsoluteSize
			local q = Vector2.new(math.max(l.X, o.X), math.max(l.Y, o.Y))
			local r = Vector2.new(math.min(l.X + m.X, o.X + p.X), math.min(l.Y + m.Y, o.Y + p.Y))
			local s = r - q

			if s.X < 110 or s.Y < 26 then
				self:CloseEditor(true)

				return false
			end

			self.EditorTarget = (q + r) / 2 - k.AbsolutePosition
			self.EditorFrame.Size = UDim2.fromOffset(s.X, s.Y)

			if self.EditorTransition == "Open" then
				self.EditorFrame.Position = UDim2.fromOffset(self.EditorTarget.X, self.EditorTarget.Y)
			elseif self.EditorTransition == "Opening" then
				self.Editor:_tween(self.EditorFrame, {
					Position = UDim2.fromOffset(self.EditorTarget.X, self.EditorTarget.Y),
				}, {
					Time = math.max(0.01, f.Motion.ModalOpen - (os.clock() - self.EditorTransitionStart)),
				})
			end

			return true
		end
		function j:OpenEditor()
			if self.IsLocked or self.Disposed or self.IsEditorOpen or not i.Visible(self.OwnerRow) then
				return
			end
			if self.Window.ActiveSlider and self.Window.ActiveSlider ~= self then
				self.Window.ActiveSlider:CloseEditor(true)
			end

			self.Editor:_cancelTransition()

			self.EditorTransition = "Closed"

			if not self:_syncEditor() then
				return
			end

			self.Window.ActiveSlider, self.IsEditorOpen = self, true
			self.EditorTransition = "Opening"
			self.EditorTransitionStart = os.clock()

			local k = self.Editor.TransitionToken
			local l = self.TriggerButton.AbsolutePosition
				+ self.TriggerButton.AbsoluteSize / 2
				- self.Window:GetOverlayParent().AbsolutePosition

			self.EditorFrame.Position = UDim2.fromOffset(l.X, l.Y)
			self.EditorFrame.Visible, self.EditorFrame.GroupTransparency = true, 0
			self.EditorScale.Scale = 0.15
			self.EditorBody.GroupTransparency, self.EditorBody.Interactable = 1, false

			self.Editor:_tween(self.EditorFrame, {
				Position = UDim2.fromOffset(self.EditorTarget.X, self.EditorTarget.Y),
			}, {
				Time = f.Motion.ModalOpen,
			})
			self.Editor:_tween(self.EditorBody, { GroupTransparency = 0 }, { Time = 0.08 })

			local m = self.Editor:_tween(self.EditorScale, { Scale = 1 }, {
				Time = f.Motion.ModalOpen,
			})

			m.Completed:Once(function(n)
				if n == Enum.PlaybackState.Completed and k == self.Editor.TransitionToken and self.IsEditorOpen then
					self.EditorTransition, self.EditorBody.Interactable = "Open", true

					self:_syncEditor()
				end
			end)
			self:_render()
		end
		function j:CloseEditor(k)
			if not self.IsEditorOpen and self.EditorTransition ~= "Closing" then
				return
			end
			if self.EditorTransition == "Closing" and not k then
				return
			end
			if self.IsEditorOpen and self.ValueBox:IsFocused() then
				self:_commitText(self.ValueBox.Text)
			end

			self.IsEditorOpen, self.IsDragging, self.DragInput = false, false, nil

			self.Editor:_cancelTransition()

			self.EditorBody.Interactable = false

			if self.ValueBox:IsFocused() then
				self.ValueBox:ReleaseFocus(false)
			end

			local function finish()
				self.EditorTransition, self.EditorFrame.Visible = "Closed", false

				if self.Window.ActiveSlider == self then
					self.Window.ActiveSlider = nil
				end
			end

			if k then
				finish()

				return
			end

			self.EditorTransition = "Closing"

			local l = self.Editor.TransitionToken

			if i.Visible(self.TriggerButton) then
				local m = self.TriggerButton.AbsolutePosition
					+ self.TriggerButton.AbsoluteSize / 2
					- self.Window:GetOverlayParent().AbsolutePosition

				self.Editor:_tween(self.EditorFrame, {
					Position = UDim2.fromOffset(m.X, m.Y),
				}, {
					Time = f.Motion.ModalClose,
					Direction = Enum.EasingDirection.In,
				})
				self.Editor:_tween(self.EditorScale, { Scale = 0.15 }, {
					Time = f.Motion.ModalClose,
					Direction = Enum.EasingDirection.In,
				})
			end

			local m = self.Editor:_tween(self.EditorFrame, { GroupTransparency = 1 }, {
				Time = f.Motion.ModalClose,
			})

			m.Completed:Once(function(n)
				if n == Enum.PlaybackState.Completed and l == self.Editor.TransitionToken then
					finish()
				end
			end)
		end
		function j:_commitText(k)
			local l = k

			if self.Suffix ~= "" and string.sub(l, -#self.Suffix) == self.Suffix then
				l = string.sub(l, 1, -#self.Suffix - 1)
			end

			local m = tonumber(l)

			if m and m == m and math.abs(m) < math.huge then
				self:_commitValue(m)
			else
				self:_render()
			end
		end
		function j:_render()
			local k = self:_getAlphaFromValue()

			e.Play(self.Fill, {
				Size = UDim2.fromScale(k, 1),
			}, {
				Time = f.Motion.Drag,
			})
			e.Play(self.Knob, {
				Position = UDim2.fromScale(k, 0.5),
			}, {
				Time = f.Motion.Drag,
			})

			self.ValueBox.Text = self:_formatValue(self.Value)
			self.ValueLabel.Text = self:_formatValue(self.Value)
		end
		function j:_setValueFromAlpha(k: number)
			local l = self.Min + (math.clamp(k, 0, 1) * (self.Max - self.Min))

			self:SetValue(l)
		end
		function j:_setValueFromPosition(k: number)
			local l = k - self.Track.AbsolutePosition.X
			local m = l / math.max(1, self.Track.AbsoluteSize.X)

			self:_setValueFromAlpha(m)
		end
		function j:_commitValue(k: number)
			local l = self:_roundToStep(math.clamp(k, self.Min, self.Max))

			if l == self.Value then
				self:_render()

				return
			end

			self.Value = l

			if self.Flag and self.Values then
				self.Values[self.Flag] = self.Value
			end

			self:_render()
			self.State:Fire(self.Value)

			if self.Callback then
				self.Callback(self.Value)
			end
		end
		function j:SetValue(k: number)
			self:_commitValue(k)
		end
		function j:Lock(k: string)
			if self.IsLocked then
				return
			end

			self:CloseEditor(true)

			self.IsLocked = true
			self.PreLockValue = self.Value
			self.Value = nil

			if self.Flag and self.Values then
				self.Values[self.Flag] = nil
			end

			self:_render()
			self.State:Fire(nil)

			if self.Callback then
				self.Callback(nil)
			end
			if self.Row then
				self.Row:Lock(k)
			end
		end
		function j:UnLock()
			if not self.IsLocked then
				return
			end

			self.IsLocked = false

			local k = self.PreLockValue

			self.Value = k

			if self.Flag and self.Values then
				self.Values[self.Flag] = k
			end

			self:_render()
			self.State:Fire(k)

			if self.Callback then
				self.Callback(k)
			end
			if self.Row then
				self.Row:UnLock()
			end
		end
		function j:OnChange(k: (number) -> ())
			self.State:Add(k)
			task.defer(k, self.Value)
		end
		function j:AddDisclosure()
			return self.Row:CreateDisclosure(self.Section)
		end

		return j
	end
	function a.p()
		local b = game:GetService("TeleportService")
		local c = game:GetService("UserInputService")
		local d = a.load("f")
		local e = a.load("a")
		local f = a.load("d")
		local g = a.load("j")
		local h = a.load("k")
		local i = {}
		local j = 10
		local k = if game:GetService("UserInputService").TouchEnabled then f.Spacing.TouchTarget else 28

		function i.new(l, m: KeybindArgs__DARKLUA_TYPE_f)
			local n = setmetatable({}, { __index = i })

			n.Section = l
			n.State = g.new()
			n.TriggerState = g.new()
			n.Connections = {}
			n.Label = m.Label
			n.Desc = m.Desc
			n.Values = m.Values or l.Flags
			n.Flag = if type(m.Value) == "string" then m.Value else nil
			n.Default = if typeof(m.Default) == "EnumItem" and m.Default.EnumType == Enum.KeyCode
				then m.Default
				else Enum.KeyCode.Unknown
			n.Value = n.Default
			n.Callback = m.Callback
			n.Triggered = m.Triggered
			n.IsListening = false
			n.IsDestroyed = false

			if n.Flag and n.Values then
				local o = n.Values[n.Flag]

				n.Value = if typeof(o) == "EnumItem" and o.EnumType == Enum.KeyCode then o else n.Default
				n.Values[n.Flag] = n.Value
			else
				n.Value = if typeof(m.Value) == "EnumItem" and m.Value.EnumType == Enum.KeyCode
					then m.Value
					else n.Default
			end

			n:_build()
			n:_connectGlobalInput()

			return n
		end
		function i:_trackConnection(l: RBXScriptConnection)
			table.insert(self.Connections, l)

			return l
		end
		function i:_disconnectAll()
			for l, m in ipairs(self.Connections) do
				if m.Connected then
					m:Disconnect()
				end
			end

			self.Connections = {}
		end
		function i:Destroy()
			if self.IsDestroyed then
				return
			end

			self.IsDestroyed = true
			self.IsListening = false

			self:_disconnectAll()
		end
		function i:_formatKeyCode(l: Enum.KeyCode)
			if l == Enum.KeyCode.Unknown then
				return "None"
			end

			return l.Name
		end
		function i:_render()
			self.BindButton.Text = if self.IsListening then "..." else self:_formatKeyCode(self.Value)
			self.BindButton.TextColor3 = if self.IsListening then f.Theme.AccentColor else f.Theme.TextColor
		end
		function i:_setKeyCode(l: Enum.KeyCode)
			self.Value = l
			self.IsListening = false

			if self.Flag and self.Values then
				self.Values[self.Flag] = l
			end

			self:_render()
			self.State:Fire(self.Value)

			if self.Callback then
				self.Callback(self.Value)
			end
		end
		function i:_build()
			local l = f.getFont("Body")
			local m = h.new(self.Section.Container, self.Label, self.Desc)

			self.Row = m

			local n = e("Frame", {
				Name = "BindSlot",
				Size = UDim2.new(0.5, -10, 1, 0),
				BackgroundTransparency = 1,
				Parent = m.TopContainer,
			})
			local o = e("Frame", {
				AnchorPoint = Vector2.new(1, 0),
				AutomaticSize = Enum.AutomaticSize.XY,
				Position = UDim2.fromScale(1, 0),
				BackgroundColor3 = f.Theme.PrimaryColor,
				Parent = n,
			})

			d.Corner(f.Surface.ControlRadius, o)
			d.Stroke(1, f.Theme.BorderColor, o)
			d.XPadding(8, o)

			self.BindButton = e("TextButton", {
				Size = UDim2.fromOffset(j, k),
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundTransparency = 1,
				Text = "",
				TextColor3 = f.Theme.TextColor,
				TextSize = l.Size - 1,
				AutoButtonColor = false,
				FontFace = Font.new(l.Font, l.Weight, l.Style),
				Parent = o,
			})

			self:_trackConnection(self.BindButton.MouseButton1Click:Connect(function()
				if self.IsLocked then
					return
				end

				self.IsListening = not self.IsListening

				self:_render()
			end))
			self:_trackConnection(self.Row.RowContainer.AncestryChanged:Connect(function(p, q)
				if q == nil then
					self:Destroy()
				end
			end))
			self:_render()
		end
		function i:_connectGlobalInput()
			self:_trackConnection(c.InputBegan:Connect(function(l, m)
				if self.IsDestroyed or self.IsLocked then
					return
				end
				if m then
					return
				end
				if l.UserInputType ~= Enum.UserInputType.Keyboard then
					return
				end
				if self.IsListening then
					if l.KeyCode == Enum.KeyCode.Backspace then
						self:_setKeyCode(Enum.KeyCode.Unknown)

						return
					end
					if l.KeyCode ~= Enum.KeyCode.Unknown then
						self:_setKeyCode(l.KeyCode)
					end

					return
				end
				if self.Value == Enum.KeyCode.Unknown then
					return
				end
				if l.KeyCode == self.Value then
					self.TriggerState:Fire(self.Value)

					if self.Triggered then
						self.Triggered(self.Value)
					end
				end
			end))
		end
		function i:SetKeyCode(l: Enum.KeyCode)
			self:_setKeyCode(l)
		end
		function i:Lock(l: string)
			if self.IsLocked then
				return
			end

			self.IsLocked = true
			self.PreLockValue = self.Value
			self.Value = nil

			if self.Flag and self.Values then
				self.Values[self.Flag] = nil
			end

			self:_render()
			self.State:Fire(nil)

			if self.Callback then
				self.Callback(nil)
			end
			if self.Row then
				self.Row:Lock(l)
			end
		end
		function i:UnLock()
			if not self.IsLocked then
				return
			end

			self.IsLocked = false

			local l = self.PreLockValue or Enum.KeyCode.Unknown

			self.Value = l

			if self.Flag and self.Values then
				self.Values[self.Flag] = l
			end

			self:_render()
			self.State:Fire(l)

			if self.Callback then
				self.Callback(l)
			end
			if self.Row then
				self.Row:UnLock()
			end
		end
		function i:OnChange(l: (Enum.KeyCode) -> ())
			self.State:Add(l)

			if self.Value ~= Enum.KeyCode.Unknown and self.Value ~= nil then
				task.defer(l, self.Value)
			end
		end
		function i:OnTriggered(l: (Enum.KeyCode) -> ())
			self.TriggerState:Add(l)
		end
		function i:AddDisclosure()
			return self.Row:CreateDisclosure(self.Section)
		end

		return i
	end
	function a.q()
		local b = a.load("f")
		local c = a.load("a")
		local d = a.load("g")
		local e = a.load("d")
		local f = a.load("j")
		local g = a.load("k")
		local h = a.load("h")
		local i = {}

		function i.new(j, k: ButtonArgs__DARKLUA_TYPE_g)
			local l = setmetatable({}, { __index = i })

			l.Section = j
			l.Label = k.Label
			l.Desc = k.Desc
			l.Text = k.Text or "Run"
			l.Icon = k.Icon or "lucide-play"
			l.Tooltip = k.Tooltip or k.Text or k.Label
			l.Callback = k.Callback
			l.State = f.new()

			l:_build()

			return l
		end
		function i:_build()
			local j = e.getFont("Body")
			local k = g.new(self.Section.Container, self.Label, self.Desc)

			self.Row = k

			local l = c("Frame", {
				Name = "ButtonSlot",
				Size = UDim2.new(0.5, -10, 1, 0),
				BackgroundTransparency = 1,
				Parent = k.TopContainer,
			})

			self.Button = c("TextButton", {
				Name = "ActionButton",
				AnchorPoint = Vector2.new(1, 0.5),
				AutomaticSize = Enum.AutomaticSize.None,
				Position = UDim2.new(1, 0, 0.5, 0),
				Size = UDim2.fromOffset(28, 28),
				BackgroundColor3 = e.Theme.AccentColor,
				AutoButtonColor = false,
				Text = "",
				TextColor3 = e.Theme.White,
				TextSize = 12,
				FontFace = Font.new(j.Font, j.Weight, j.Style),
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				Parent = l,
			})

			b.Corner(e.Surface.ControlRadius, self.Button)

			b.Stroke(1, e.Theme.BorderColor, self.Button).Transparency = e.Surface.Border

			c("ImageLabel", {
				Name = "Icon",
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				Size = UDim2.fromOffset(16, 16),
				Image = h[self.Icon] or self.Icon,
				ImageColor3 = e.Theme.White,
				BackgroundTransparency = 1,
				Parent = self.Button,
			})
			b.TouchTarget(self.Button, function()
				self:_activate()
			end)

			local m = c("UIScale", {
				Scale = 1,
				Parent = self.Button,
			})

			self.Button.MouseButton1Down:Connect(function()
				if self.IsLocked then
					return
				end

				d.Play(m, { Scale = 0.93 }, { Time = 0.08 })
			end)
			self.Button.MouseButton1Up:Connect(function()
				if self.IsLocked then
					return
				end

				d.Play(m, { Scale = 1 }, { Time = 0.12 })
			end)
			self.Button.MouseEnter:Connect(function()
				self.Section.Tab.Window:ShowTooltip(self.Button, self.Tooltip)

				if self.IsLocked then
					return
				end

				d.Play(self.Button, {
					BackgroundColor3 = e.Theme.PrimaryHoverColor or Color3.fromRGB(50, 50, 50),
				}, { Time = 0.12 })
			end)
			self.Button.MouseLeave:Connect(function()
				self.Section.Tab.Window:HideTooltip()
				d.Play(m, { Scale = 1 }, { Time = 0.12 })

				if self.IsLocked then
					return
				end

				d.Play(self.Button, {
					BackgroundColor3 = e.Theme.AccentColor,
				}, { Time = 0.12 })
			end)
			self.Button.Activated:Connect(function()
				if self.IsLocked then
					return
				end

				self:_activate()
			end)
		end
		function i:_activate()
			if self.IsLocked then
				return
			end

			self.State:Fire()

			if self.Callback then
				self.Callback()
			end
		end
		function i:OnClick(j: () -> ())
			self.State:Add(j)
		end
		function i:Lock(j: string)
			if self.IsLocked then
				return
			end

			self.IsLocked = true

			if self.Row then
				self.Row:Lock(j)
			end
		end
		function i:UnLock()
			if not self.IsLocked then
				return
			end

			self.IsLocked = false

			if self.Row then
				self.Row:UnLock()
			end
		end
		function i:AddDisclosure()
			return self.Row:CreateDisclosure(self.Section)
		end

		return i
	end
	function a.r()
		local b = a.load("f")
		local c = a.load("a")
		local d = a.load("d")
		local e = a.load("j")
		local f = a.load("k")
		local g = {}
		local h = 120
		local i = 26

		function g.new(j, k: TextboxArgs__DARKLUA_TYPE_h)
			local l = setmetatable({}, { __index = g })

			l.Section = j
			l.State = e.new()
			l.Label = k.Label
			l.Desc = k.Desc
			l.Values = k.Values or j.Flags
			l.Flag = k.Value
			l.Default = k.Default or ""
			l.Placeholder = k.Placeholder or ""
			l.ConfirmText = if k.ConfirmText == nil then "saved" else k.ConfirmText
			l.ConfirmDuration = if type(k.ConfirmDuration) == "number" then k.ConfirmDuration else 1.5
			l.ConfirmToken = 0
			l.Callback = k.Callback
			l.Value = l.Default

			if l.Flag and l.Values then
				local m = l.Values[l.Flag]

				l.Value = if type(m) == "string" then m else l.Default
				l.Values[l.Flag] = l.Value
			end

			l:_build()

			return l
		end
		function g:_build()
			local j = d.getFont("Body")
			local k = f.new(self.Section.Container, self.Label, nil)

			self.Row = k

			local l = c("Frame", {
				Name = "InputSlot",
				Size = UDim2.new(0.5, -10, 1, 0),
				BackgroundTransparency = 1,
				Parent = k.TopContainer,
			})

			self.Input = c("TextBox", {
				Name = "Input",
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.fromScale(1, 0.5),
				Size = UDim2.fromOffset(h, i),
				BackgroundColor3 = d.Theme.CardBackgroundColor,
				ClipsDescendants = true,
				ClearTextOnFocus = false,
				MultiLine = false,
				PlaceholderText = self.Placeholder,
				PlaceholderColor3 = d.Theme.TextMutedColor,
				Text = self.Value,
				TextColor3 = d.Theme.TextColor,
				TextSize = j.Size - 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				FontFace = Font.new(j.Font, j.Weight, j.Style),
				Parent = l,
			})

			b.Corner(d.Surface.ControlRadius, self.Input)
			b.Stroke(1, d.Theme.BorderColor, self.Input)
			b.XPadding(8, self.Input)
			b.TouchTarget(l, function()
				if not self.IsLocked then
					self.Input:CaptureFocus()
				end
			end)

			local function resize()
				local m = k.TopContainer.AbsoluteSize.X / b.LayoutScale(k.TopContainer)

				self.Input.Size = UDim2.fromOffset(math.min(math.max(1, m), math.clamp(m * 0.4, 72, 140)), i)
			end

			k.TopContainer:GetPropertyChangedSignal("AbsoluteSize"):Connect(resize)
			resize()

			if self.Desc and self.Desc ~= "" then
				local m = c("TextLabel", {
					Name = "Desc",
					AutomaticSize = Enum.AutomaticSize.Y,
					Size = UDim2.new(1, 0, 0, 0),
					Text = self.Desc,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextSize = j.Size - 2,
					FontFace = Font.new(j.Font, j.Weight, j.Style),
					TextColor3 = d.Theme.TextMutedColor,
					BackgroundTransparency = 1,
					LayoutOrder = 2,
					Parent = k.RowContainer,
				})
			end
			if self.ConfirmText ~= "" then
				self.ConfirmLabel = c("TextLabel", {
					Name = "ConfirmLabel",
					AutomaticSize = Enum.AutomaticSize.Y,
					Size = UDim2.new(1, 0, 0, 0),
					Text = self.ConfirmText,
					TextXAlignment = Enum.TextXAlignment.Right,
					TextSize = 10,
					FontFace = Font.new(j.Font, j.Weight, j.Style),
					TextColor3 = d.Theme.SuccessColor,
					BackgroundTransparency = 1,
					Visible = false,
					LayoutOrder = 3,
					Parent = k.RowContainer,
				})
			end

			self.Input.FocusLost:Connect(function()
				if self.IsLocked then
					return
				end

				self:_commitValue(self.Input.Text)
			end)
		end
		function g:_showConfirm()
			if not self.ConfirmLabel then
				return
			end

			self.ConfirmToken += 1

			local j = self.ConfirmToken

			self.ConfirmLabel.Text = self.ConfirmText
			self.ConfirmLabel.TextTransparency = 0
			self.ConfirmLabel.Visible = true

			task.delay(self.ConfirmDuration, function()
				if j ~= self.ConfirmToken or not self.ConfirmLabel then
					return
				end

				self.ConfirmLabel.Visible = false
				self.ConfirmLabel.TextTransparency = 1
			end)
		end
		function g:_commitValue(j: string)
			local k = tostring(j or "")

			if k == self.Value then
				self.Input.Text = self.Value or ""

				self:_showConfirm()

				return
			end

			self.Value = k

			if self.Flag and self.Values then
				self.Values[self.Flag] = self.Value
			end

			self.Input.Text = self.Value or ""

			self.State:Fire(self.Value)

			if self.Callback then
				self.Callback(self.Value)
			end

			self:_showConfirm()
		end
		function g:SetValue(j: string)
			self:_commitValue(j)
		end
		function g:Lock(j: string)
			if self.IsLocked then
				return
			end

			self.IsLocked = true
			self.PreLockValue = self.Value
			self.Value = nil

			if self.Flag and self.Values then
				self.Values[self.Flag] = nil
			end
			if self.Input then
				self.Input.Text = ""
			end

			self.State:Fire(nil)

			if self.Callback then
				self.Callback(nil)
			end
			if self.Row then
				self.Row:Lock(j)
			end
		end
		function g:UnLock()
			if not self.IsLocked then
				return
			end

			self.IsLocked = false

			local j = self.PreLockValue

			self.Value = j

			if self.Flag and self.Values then
				self.Values[self.Flag] = j
			end
			if self.Input then
				self.Input.Text = j or ""
			end

			self.State:Fire(j)

			if self.Callback then
				self.Callback(j)
			end
			if self.Row then
				self.Row:UnLock()
			end
		end
		function g:OnChange(j: (string) -> ())
			self.State:Add(j)

			if self.Value ~= "" and self.Value ~= nil then
				task.defer(j, self.Value)
			end
		end
		function g:AddDisclosure()
			return self.Row:CreateDisclosure(self.Section)
		end

		return g
	end
	function a.s()
		local b = a.load("a")
		local c = a.load("d")
		local d = {}

		function d.new(e, f: SeparatorArgs__DARKLUA_TYPE_i?)
			local g = setmetatable({}, { __index = d })

			f = f or {}
			g.Section = e
			g.Thickness = math.max(f.Thickness or 1, 1)
			g.Color = f.Color or c.Theme.BorderColor
			g.PaddingLeft = math.max(f.PaddingLeft or c.Spacing.RowX, 0)
			g.PaddingRight = math.max(f.PaddingRight or c.Spacing.RowX, 0)

			g:_build()

			return g
		end
		function d:_build()
			self.Container = b("Frame", {
				Name = "Separator",
				Size = UDim2.new(1, 0, 0, self.Thickness),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Parent = self.Section.Container,
			})
			self.Line = b("Frame", {
				Name = "Line",
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, self.PaddingLeft, 0.5, 0),
				Size = UDim2.new(1, -(self.PaddingLeft + self.PaddingRight), 0, self.Thickness),
				BackgroundColor3 = self.Color,
				BorderSizePixel = 0,
				Parent = self.Container,
			})
		end
		function d:Lock(e: string)
			if self.IsLocked then
				return
			end

			self.IsLocked = true

			if self.Line then
				self.Line.BackgroundTransparency = 0.7
			end
		end
		function d:UnLock()
			if not self.IsLocked then
				return
			end

			self.IsLocked = false

			if self.Line then
				self.Line.BackgroundTransparency = 0
			end
		end

		return d
	end
	function a.t()
		local b = a.load("f")
		local c = a.load("a")
		local d = a.load("d")
		local e = a.load("j")
		local f = game:GetService("RunService")
		local g = game:GetService("TweenService")
		local h = {}

		h.__index = h
		h.Presets = {
			Theme = ColorSequence.new({
				ColorSequenceKeypoint.new(0, d.Theme.AccentColor),
				ColorSequenceKeypoint.new(0.5, d.Theme.AccentHoverColor or Color3.fromRGB(255, 230, 200)),
				ColorSequenceKeypoint.new(1, d.Theme.AccentColor),
			}),
			Rainbow = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromHSV(0, 0.85, 1)),
				ColorSequenceKeypoint.new(0.2, Color3.fromHSV(0.15, 0.85, 1)),
				ColorSequenceKeypoint.new(0.4, Color3.fromHSV(0.33, 0.85, 1)),
				ColorSequenceKeypoint.new(0.6, Color3.fromHSV(0.5, 0.85, 1)),
				ColorSequenceKeypoint.new(0.8, Color3.fromHSV(0.7, 0.85, 1)),
				ColorSequenceKeypoint.new(1, Color3.fromHSV(0, 0.85, 1)),
			}),
			Sunset = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromRGB(238, 77, 45)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(244, 185, 66)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(238, 77, 45)),
			}),
			Ocean = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 150, 255)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 200)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 150, 255)),
			}),
			Neon = ColorSequence.new({
				ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 128)),
				ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255)),
				ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 128)),
			}),
			Skeleton = ColorSequence.new({
				ColorSequenceKeypoint.new(0, d.Theme.TextMutedColor),
				ColorSequenceKeypoint.new(0.5, d.Theme.AccentColor),
				ColorSequenceKeypoint.new(1, d.Theme.TextMutedColor),
			}),
		}

		function h.new(i: LabelArgs__DARKLUA_TYPE_j)
			local j = setmetatable({}, h)

			j.Text = i.Text or "Label"
			j.Desc = i.Desc
			j.Color = i.Color or d.Theme.TextColor
			j.Gradient = nil

			if i.Gradient then
				if typeof(i.Gradient) == "ColorSequence" then
					j.Gradient = i.Gradient
				elseif type(i.Gradient) == "string" and h.Presets[i.Gradient] then
					j.Gradient = h.Presets[i.Gradient]
				else
					j.Gradient = h.Presets.Theme
				end
			end

			j.AnimateGradient = i.AnimateGradient == true
			j.AnimationSpeed = i.AnimationSpeed or 1
			j.AnimationType = i.AnimationType or "Shift"
			j.TextState = e.new()
			j.ColorState = e.new()
			j.GradientState = e.new()
			j.TweenState = e.new()
			j.HeartbeatState = e.new()
			j.HeartbeatConnection = nil

			return j
		end
		function h:SetText(i: string)
			self.Text = i

			self.TextState:Fire(i)
		end
		function h:SetColor(i: Color3)
			self.Color = i
			self.Gradient = nil

			self.ColorState:Fire(i)
			self:StopAnimation()
		end
		function h:SetGradient(i: ColorSequence | string)
			if typeof(i) == "ColorSequence" then
				self.Gradient = i
			elseif type(i) == "string" and h.Presets[i] then
				self.Gradient = h.Presets[i]
			else
				self.Gradient = h.Presets.Theme
			end

			self.Color = nil

			self.GradientState:Fire(self.Gradient)

			if self.AnimateGradient then
				self:StartAnimation()
			end
		end
		function h:StartAnimation()
			self.AnimateGradient = true

			self:StopHeartbeat()

			if self.AnimationType == "RainbowHue" then
				local i = 0

				self.HeartbeatConnection = f.Heartbeat:Connect(function(j)
					i = i + j * self.AnimationSpeed

					local k = {}
					local l = 6

					for m = 0, l - 1 do
						local n = m / (l - 1)
						local o = (n + i * 0.08) % 1

						table.insert(k, ColorSequenceKeypoint.new(n, Color3.fromHSV(o, 0.85, 1)))
					end

					self.HeartbeatState:Fire(ColorSequence.new(k))
				end)
			else
				self.TweenState:Fire(true, self.AnimationType, self.AnimationSpeed)
			end
		end
		function h:StopAnimation()
			self.AnimateGradient = false

			self:StopHeartbeat()
			self.TweenState:Fire(false, self.AnimationType, self.AnimationSpeed)
		end
		function h:StopHeartbeat()
			if self.HeartbeatConnection then
				self.HeartbeatConnection:Disconnect()

				self.HeartbeatConnection = nil
			end
		end
		function h:Destroy()
			self:StopAnimation()
		end

		local i = {}

		i.__index = i

		function i.new(j, k: LabelArgs__DARKLUA_TYPE_j)
			local l = setmetatable({}, i)

			l.Section = j
			l.Controller = h.new(k)
			l.ActiveTween = nil

			l:_build(k)

			return l
		end
		function i:_build(j: LabelArgs__DARKLUA_TYPE_j)
			local k = if j.Font
					or j.Size
					or j.Weight
					or j.Style
				then d.customFont({
					font = j.Font,
					weight = j.Weight,
					style = j.Style,
					size = j.Size,
				})
				else d.getFont("Body")

			self.Container = c("Frame", {
				Name = "LabelContainer",
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				Parent = self.Section.Container,
			})

			b.Padding(d.Spacing.RowY, d.Spacing.RowY, d.Spacing.RowX, d.Spacing.RowX, self.Container)
			b.ListLayout(d.Spacing.Description, Enum.FillDirection.Vertical, self.Container)

			self.TextLabel = c("TextLabel", {
				Name = "LabelText",
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 0),
				TextSize = k.Size,
				Text = self.Controller.Text,
				TextColor3 = (self.Controller.Gradient or j.AnimationType == "RainbowHue") and Color3.new(1, 1, 1)
					or self.Controller.Color,
				FontFace = Font.new(k.Font, k.Weight, k.Style),
				TextWrapped = true,
				RichText = j.RichText == true,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextXAlignment = j.TextXAlignment or Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
				Parent = self.Container,
			})
			self.DescLabel = nil

			if self.Controller.Desc then
				self.DescLabel = c("TextLabel", {
					Name = "LabelDesc",
					AutomaticSize = Enum.AutomaticSize.Y,
					Size = UDim2.new(1, 0, 0, 0),
					TextSize = k.Size - 2,
					Text = self.Controller.Desc,
					TextColor3 = d.Theme.TextMutedColor,
					FontFace = Font.new(k.Font, k.Weight, k.Style),
					TextWrapped = true,
					RichText = j.RichText == true,
					TextYAlignment = Enum.TextYAlignment.Top,
					TextXAlignment = j.TextXAlignment or Enum.TextXAlignment.Left,
					BackgroundTransparency = 1,
					Parent = self.Container,
				})
			end

			self.UIGradient = nil

			if self.Controller.Gradient or j.AnimationType == "RainbowHue" then
				self.UIGradient = c("UIGradient", {
					Color = self.Controller.Gradient or h.Presets.Rainbow,
					Parent = self.TextLabel,
				})
			end

			self.Controller.TextState:Add(function(l)
				if self.TextLabel then
					self.TextLabel.Text = l
				end
			end)
			self.Controller.ColorState:Add(function(l)
				self:_clearTweens()

				if self.UIGradient then
					self.UIGradient:Destroy()

					self.UIGradient = nil
				end
				if self.TextLabel then
					self.TextLabel.TextColor3 = l
				end
			end)
			self.Controller.GradientState:Add(function(l)
				if not self.UIGradient then
					self.UIGradient = c("UIGradient", {
						Parent = self.TextLabel,
					})
				end
				if self.TextLabel then
					self.TextLabel.TextColor3 = Color3.new(1, 1, 1)
				end

				self.UIGradient.Color = l
			end)
			self.Controller.TweenState:Add(function(l, m, n)
				self:_applyTweenAnimation(l, m, n)
			end)
			self.Controller.HeartbeatState:Add(function(l)
				if not self.UIGradient then
					self.UIGradient = c("UIGradient", {
						Parent = self.TextLabel,
					})

					if self.TextLabel then
						self.TextLabel.TextColor3 = Color3.new(1, 1, 1)
					end
				end

				self.UIGradient.Color = l
			end)

			if self.Controller.AnimateGradient then
				self.Controller:StartAnimation()
			end
		end
		function i:_applyTweenAnimation(j: boolean, k: string, l: number)
			self:_clearTweens()

			if not j or not self.UIGradient then
				return
			end

			local m = 4 / math.max(l, 0.01)

			if k == "Shift" then
				self.UIGradient.Offset = Vector2.new(-1, 0)

				local n = TweenInfo.new(m, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, false, 0)

				self.ActiveTween = g:Create(self.UIGradient, n, {
					Offset = Vector2.new(1, 0),
				})

				self.ActiveTween:Play()
			elseif k == "Rotate" then
				self.UIGradient.Rotation = 0

				local n = TweenInfo.new(m * 2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, false, 0)

				self.ActiveTween = g:Create(self.UIGradient, n, { Rotation = 360 })

				self.ActiveTween:Play()
			end
		end
		function i:_clearTweens()
			if self.ActiveTween then
				self.ActiveTween:Cancel()
				self.ActiveTween:Destroy()

				self.ActiveTween = nil
			end
		end
		function i:SetText(j: string)
			self.Controller:SetText(j)

			return self
		end
		function i:SetDesc(j: string)
			self.Controller.Desc = j

			if not self.DescLabel then
				self.DescLabel = c("TextLabel", {
					Name = "LabelDesc",
					AutomaticSize = Enum.AutomaticSize.Y,
					Size = UDim2.new(1, 0, 0, 0),
					TextSize = self.TextLabel.TextSize - 2,
					TextColor3 = d.Theme.TextMutedColor,
					FontFace = self.TextLabel.FontFace,
					TextWrapped = true,
					RichText = self.TextLabel.RichText,
					TextYAlignment = Enum.TextYAlignment.Top,
					TextXAlignment = self.TextLabel.TextXAlignment,
					BackgroundTransparency = 1,
					TextTransparency = if self.IsLocked then 0.7 else 0,
					Parent = self.Container,
				})
			end

			self.DescLabel.Text = j

			return self
		end
		function i:SetColor(j: Color3)
			self.Controller:SetColor(j)

			return self
		end
		function i:SetGradient(j: ColorSequence | string)
			self.Controller:SetGradient(j)

			return self
		end
		function i:StartAnimation()
			self.Controller:StartAnimation()

			return self
		end
		function i:StopAnimation()
			self.Controller:StopAnimation()

			return self
		end
		function i:Lock(j: string)
			if self.IsLocked then
				return
			end

			self.IsLocked = true

			if self.TextLabel then
				self.TextLabel.TextTransparency = 0.5
			end
			if self.DescLabel then
				self.DescLabel.TextTransparency = 0.7
			end
		end
		function i:UnLock()
			if not self.IsLocked then
				return
			end

			self.IsLocked = false

			if self.TextLabel then
				self.TextLabel.TextTransparency = 0
			end
			if self.DescLabel then
				self.DescLabel.TextTransparency = 0
			end
		end
		function i:Destroy()
			self:_clearTweens()
			self.Controller:Destroy()

			if self.Container then
				self.Container:Destroy()
			end
		end

		return i
	end
	function a.u()
		local b = a.load("j")
		local c = {}

		c.__index = c

		function c.new(
			d: { string },
			e: boolean,
			f: any,
			g: ControllerCallback__DARKLUA_TYPE_k?,
			h: string?,
			i: { [string]: any }?
		)
			local j = setmetatable({}, c)

			j.Items = table.clone(d or {})
			j.IsMulti = e == true
			j.Callback = g
			j.Flag = h
			j.Values = i
			j.IsLocked = false
			j.LockReason = ""
			j.State = b.new()

			if j.IsMulti then
				j.Selection = if type(f) == "table" then table.clone(f) else {}
			else
				j.Selection = if type(f) == "string" then f else ""
			end
			if j.Flag and j.Values then
				j.Values[j.Flag] = j.Selection
			end

			return j
		end
		function c:SelectItem(d: string)
			if self.IsLocked then
				return
			end
			if self.IsMulti then
				local e = table.find(self.Selection, d)

				if e then
					table.remove(self.Selection, e)
				else
					table.insert(self.Selection, d)
				end
			else
				if self.Selection == d then
					self.Selection = ""
				else
					self.Selection = d
				end
			end

			self:_commit()
		end
		function c:_commit()
			if self.Flag and self.Values then
				self.Values[self.Flag] = self.Selection
			end

			self.State:Fire(self.Selection)

			if self.Callback then
				self.Callback(self.Selection)
			end
		end
		function c:GetSelection()
			return self.Selection
		end
		function c:IsSelected(d: string): boolean
			if self.Selection == nil then
				return false
			end
			if self.IsMulti then
				return table.find(self.Selection, d) ~= nil
			else
				return self.Selection == d
			end
		end
		function c:Lock(d: string)
			if self.IsLocked then
				return
			end

			self.IsLocked = true
			self.LockReason = d or "locked"
			self.PreLockSelection = self.Selection
			self.Selection = nil

			if self.Flag and self.Values then
				self.Values[self.Flag] = nil
			end

			self.State:Fire(nil)

			if self.Callback then
				self.Callback(nil)
			end
		end
		function c:UnLock()
			if not self.IsLocked then
				return
			end

			self.IsLocked = false

			local d = self.PreLockSelection

			self.Selection = d

			if self.Flag and self.Values then
				self.Values[self.Flag] = d
			end

			self.State:Fire(d)

			if self.Callback then
				self.Callback(d)
			end
		end
		function c:OnChange(d: (any) -> ())
			self.State:Add(d)

			local e = if self.IsMulti
				then type(self.Selection) == "table" and #self.Selection > 0
				else type(self.Selection) == "string" and self.Selection ~= ""

			if e then
				task.defer(d, self.Selection)
			end
		end

		return c
	end
	function a.v()
		local b = a.load("f")
		local c = a.load("a")
		local d = a.load("g")
		local e = a.load("d")
		local f = a.load("j")
		local g = a.load("k")
		local h = a.load("h")
		local i = a.load("u")
		local j = {}

		function j.new(k, l: ChipSelectArgs__DARKLUA_TYPE_l)
			local m = setmetatable({}, { __index = j })

			m.Section = k
			m.Label = l.Label
			m.Desc = l.Desc
			m.Values = l.Values or k.Flags
			m.Flag = l.Value
			m.Default = l.Default
			m.Items = l.Items or {}
			m.isMulti = l.isMulti == true
			m.Callback = l.Callback
			m.FullWidth = l.FullWidth == true
			m.Wrapped = l.Wrapped == true

			local n = nil

			if m.Flag and m.Values then
				n = m.Values[m.Flag]
			end
			if n == nil then
				n = m.Default
			end

			m.Controller = i.new(m.Items, m.isMulti, n, m.Callback, m.Flag, m.Values)

			m:_build()
			m.Controller.State:Add(function()
				m:_render()
			end)

			return m
		end
		function j:_build()
			local k = e.getFont("Body")
			local l = g.new(self.Section.Container, self.Label, self.Desc)

			self.Row = l

			local m = not (self.Wrapped or self.FullWidth)
			local n = {
				Name = "ChipsContainer",
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				Parent = l.RowContainer,
			}

			if self.Wrapped then
				n.Size = UDim2.new(1, 0, 0, 0)
				n.AutomaticSize = Enum.AutomaticSize.Y
			else
				n.Size = UDim2.new(1, 0, 0, 28)
			end
			if m then
				n.CanvasSize = UDim2.new(0, 0, 0, 0)
				n.ScrollingDirection = Enum.ScrollingDirection.X
				n.ScrollBarThickness = 0
				n.ElasticBehavior = Enum.ElasticBehavior.Always
			end

			local o = c(m and "ScrollingFrame" or "Frame", n)

			b.Padding(4, 0, 0, 0, o)

			local p = b.ListLayout(8, Enum.FillDirection.Horizontal, o)

			p.VerticalAlignment = Enum.VerticalAlignment.Center

			if self.Wrapped then
				p.Wraps = true
			end

			self.Chips = {}

			for q, r in ipairs(self.Items) do
				local s = tostring(r)
				local t
				local u = Enum.AutomaticSize.None

				if self.Wrapped then
					if self.FullWidth then
						local v = #self.Items

						if v == 1 then
							t = UDim2.new(1, 0, 0, 28)
						elseif v == 2 then
							t = UDim2.new(0.49, -4, 0, 28)
						else
							t = UDim2.new(0.32, -6, 0, 28)
						end
					else
						t = UDim2.new(0, 0, 0, 28)
						u = Enum.AutomaticSize.X
					end
				else
					if self.FullWidth then
						t = UDim2.new(1 / #self.Items, -((#self.Items - 1) * 8) / #self.Items, 1, 0)
					else
						t = UDim2.new(0, 0, 1, 0)
						u = Enum.AutomaticSize.X
					end
				end

				local v = c("TextButton", {
					Name = s .. "Chip",
					AutomaticSize = u,
					Size = t,
					BackgroundColor3 = e.Theme.CardBackgroundColor,
					AutoButtonColor = false,
					Text = "",
					Parent = o,
				})

				b.Corner(999, v)

				local w = b.Stroke(1, e.Theme.BorderColor, v)

				b.XPadding(10, v)

				local x = b.ListLayout(6, Enum.FillDirection.Horizontal, v)

				x.VerticalAlignment = Enum.VerticalAlignment.Center
				x.HorizontalAlignment = Enum.HorizontalAlignment.Center

				local y = c("ImageLabel", {
					Name = "CheckIcon",
					Image = h["lucide-check"],
					Size = UDim2.fromOffset(12, 12),
					BackgroundTransparency = 1,
					ImageColor3 = e.Theme.White,
					Visible = false,
					Parent = v,
				})
				local z = c("TextLabel", {
					Name = "TextLabel",
					AutomaticSize = Enum.AutomaticSize.XY,
					BackgroundTransparency = 1,
					Text = s,
					TextColor3 = e.Theme.TextColor,
					TextSize = k.Size - 3,
					FontFace = Font.new(k.Font, k.Weight, k.Style),
					Parent = v,
				})
				local A = {
					Button = v,
					Stroke = w,
					CheckIcon = y,
					TextLabel = z,
					IsHovered = false,
				}

				self.Chips[s] = A

				v.MouseEnter:Connect(function()
					if self.Controller.IsLocked then
						return
					end

					A.IsHovered = true

					self:_renderChip(s)
				end)
				v.MouseLeave:Connect(function()
					if self.Controller.IsLocked then
						return
					end

					A.IsHovered = false

					self:_renderChip(s)
				end)
				v.MouseButton1Click:Connect(function()
					self.Controller:SelectItem(s)
				end)
			end

			if m then
				p:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
					o.CanvasSize = UDim2.new(0, p.AbsoluteContentSize.X + 10, 0, 0)
				end)
			end

			self.ScrollingFrame = o

			self:_render()
		end
		function j:_renderChip(k: string)
			local l = self.Chips[k]

			if not l then
				return
			end

			local m = self.Controller:IsSelected(k)
			local n = l.IsHovered
			local o = self.Controller.IsLocked
			local p
			local q
			local r
			local s
			local t = false

			if o then
				p = e.Theme.CardBackgroundColor
				q = e.Theme.TextMutedColor
				r = e.Theme.BorderColor
				s = 1
			elseif m then
				p = e.Theme.AccentColor
				q = e.Theme.White
				r = e.Theme.AccentColor
				s = 1.5
				t = true
			else
				p = n and e.Theme.SecondaryHoverColor or e.Theme.CardBackgroundColor
				q = e.Theme.TextColor
				r = n and e.Theme.AccentColor or e.Theme.BorderColor
				s = 1
			end

			d.Play(l.Button, { BackgroundColor3 = p }, { Time = 0.12 })
			d.Play(l.TextLabel, { TextColor3 = q }, { Time = 0.12 })
			d.Play(l.Stroke, {
				Color = r,
				Thickness = s,
			}, { Time = 0.12 })

			l.CheckIcon.Visible = t
		end
		function j:_render()
			for k, l in pairs(self.Chips) do
				self:_renderChip(k)
			end
		end
		function j:Lock(k: string)
			self.Controller:Lock(k)

			if self.Row then
				self.Row:Lock(k)
			end
		end
		function j:UnLock()
			self.Controller:UnLock()

			if self.Row then
				self.Row:UnLock()
			end
		end
		function j:OnChange(k: (any) -> ())
			self.Controller:OnChange(k)
		end
		function j:AddDisclosure()
			return self.Row:CreateDisclosure(self.Section)
		end

		return j
	end
	function a.w()
		local b = game:GetService("UserInputService")
		local c = game:GetService("RunService")
		local d = a.load("g")
		local e = a.load("d")
		local f = {}

		f.__index = f

		function f.new(g: { any }, h: (newOrder: { any }) -> ())
			local i = setmetatable({}, f)

			i.Items = table.clone(g)
			i.OnOrderChanged = h
			i.IsDragging = false
			i.ActiveDragIndex = nil
			i.DragVisual = nil
			i.PlaceholderFrame = nil
			i.Connections = nil

			return i
		end
		function f:StartDrag(g: number, h: Frame, i: Frame)
			if self.IsDragging then
				return
			end

			self.IsDragging = true
			self.ActiveDragIndex = g
			self.PlaceholderFrame = h
			self.ListContainer = i

			local j = i:FindFirstAncestorOfClass("ScrollingFrame")

			if j then
				self.DisabledScrollingFrame = j
				j.ScrollingEnabled = false
			end

			local k = h:FindFirstAncestorOfClass("ScreenGui")
			local l = k or h.Parent
			local m = b:GetMouseLocation()
			local n = h.AbsolutePosition.X
			local o = h.AbsolutePosition.Y
			local p = h:Clone()

			p.Name = "DragVisual"
			p.ZIndex = 9999

			for q, r in ipairs(p:GetDescendants()) do
				if r:IsA("TextBox") then
					r.TextEditable = false
					r.Active = false
				elseif r:IsA("GuiButton") then
					r.Active = false
				end
			end

			p.Size = UDim2.fromOffset(h.AbsoluteSize.X * 1.03, h.AbsoluteSize.Y * 1.03)
			p.Rotation = 1.5

			local q = l.AbsolutePosition.X
			local r = l.AbsolutePosition.Y
			local s = n - q
			local t = o - r

			if l:IsA("ScreenGui") and not l.IgnoreGuiInset then
				local u, v = game:GetService("GuiService"):GetGuiInset()

				t = t - u.Y
			end

			p.Position = UDim2.fromOffset(s, t)

			local u = p:FindFirstChildOfClass("UIStroke")

			if u then
				u.Color = e.Theme.AccentColor
				u.Thickness = 2
			end

			p.Parent = l
			self.DragVisual = p

			self:_setFrameTransparency(h, 0.6)

			self.Connections = {}

			local function updateDrag()
				local v = b:GetMouseLocation()
				local w = v.Y - m.Y
				local x = o + w
				local y = n - l.AbsolutePosition.X
				local z = x - l.AbsolutePosition.Y

				if l:IsA("ScreenGui") and not l.IgnoreGuiInset then
					local A, B = game:GetService("GuiService"):GetGuiInset()

					z = z - A.Y
				end

				p.Position = UDim2.fromOffset(y, z)

				self:_checkReorder()
			end

			table.insert(
				self.Connections,
				b.InputChanged:Connect(function(v)
					if
						v.UserInputType == Enum.UserInputType.MouseMovement
						or v.UserInputType == Enum.UserInputType.Touch
					then
						updateDrag()
					end
				end)
			)
			table.insert(
				self.Connections,
				b.InputEnded:Connect(function(v)
					if
						v.UserInputType == Enum.UserInputType.MouseButton1
						or v.UserInputType == Enum.UserInputType.Touch
					then
						self:EndDrag()
					end
				end)
			)
		end
		function f:_setFrameTransparency(g: Frame, h: number)
			g.BackgroundTransparency = if h > 0 then h else 0

			for i, j in ipairs(g:GetDescendants()) do
				if j:IsA("ImageLabel") or j:IsA("ImageButton") then
					j.ImageTransparency = h
				elseif j:IsA("TextLabel") or j:IsA("TextBox") then
					j.TextTransparency = h
				elseif j:IsA("UIStroke") then
					j.Transparency = h
				end
			end
		end
		function f:_checkReorder()
			if not self.PlaceholderFrame or not self.ListContainer or not self.DragVisual then
				return
			end

			local g = {}

			for h, i in ipairs(self.ListContainer:GetChildren()) do
				if i:IsA("Frame") and i.Name == "ItemRow" then
					table.insert(g, i)
				end
			end

			table.sort(g, function(h, i)
				return h.LayoutOrder < i.LayoutOrder
			end)

			local h = nil

			for i, j in ipairs(g) do
				if j == self.PlaceholderFrame then
					h = i

					break
				end
			end

			if not h then
				return
			end

			local i = self.DragVisual.AbsolutePosition.Y + self.DragVisual.AbsoluteSize.Y / 2
			local j = h
			local k = 4

			if h < #g then
				local l = g[h + 1]
				local m = l.AbsolutePosition.Y + l.AbsoluteSize.Y / 2

				if i > (m + k) then
					j = h + 1
				end
			end
			if j == h and h > 1 then
				local l = g[h - 1]
				local m = l.AbsolutePosition.Y + l.AbsoluteSize.Y / 2

				if i < (m - k) then
					j = h - 1
				end
			end
			if j ~= h then
				local l = g[h]
				local m = g[j]
				local n = l.LayoutOrder

				l.LayoutOrder = m.LayoutOrder
				m.LayoutOrder = n

				local o = self.Items[h]

				self.Items[h] = self.Items[j]
				self.Items[j] = o
			end
		end
		function f:EndDrag()
			if not self.IsDragging then
				return
			end

			self.IsDragging = false

			if self.DisabledScrollingFrame then
				self.DisabledScrollingFrame.ScrollingEnabled = true
				self.DisabledScrollingFrame = nil
			end
			if self.Connections then
				for g, h in ipairs(self.Connections) do
					h:Disconnect()
				end

				self.Connections = nil
			end

			local g = self.DragVisual
			local h = self.PlaceholderFrame

			if g and h then
				c.RenderStepped:Wait()

				local i = g.Parent
				local j = h.AbsolutePosition.X - i.AbsolutePosition.X
				local k = h.AbsolutePosition.Y - i.AbsolutePosition.Y

				if i:IsA("ScreenGui") and not i.IgnoreGuiInset then
					local l, m = game:GetService("GuiService"):GetGuiInset()

					k = k - l.Y
				end

				local l = d.Play(g, {
					Position = UDim2.fromOffset(j, k),
					Size = UDim2.fromOffset(h.AbsoluteSize.X, h.AbsoluteSize.Y),
					Rotation = 0,
				}, {
					Time = 0.15,
					Style = Enum.EasingStyle.Quad,
					Direction = Enum.EasingDirection.Out,
				})

				task.spawn(function()
					l.Completed:Wait()
					g:Destroy()
					self:_setFrameTransparency(h, 0)

					if self.OnOrderChanged then
						self.OnOrderChanged(self.Items)
					end
				end)
			else
				if g then
					g:Destroy()
				end
				if h then
					self:_setFrameTransparency(h, 0)
				end
			end

			self.DragVisual = nil
			self.PlaceholderFrame = nil
		end

		return f
	end
	function a.x()
		local b = a.load("f")
		local c = a.load("a")
		local d = a.load("g")
		local e = a.load("d")
		local f = a.load("j")
		local g = a.load("k")
		local h = a.load("h")
		local i = a.load("w")
		local j = game:GetService("UserInputService")
		local k = {}

		local function getItemTitle(l: any): string
			if type(l) == "table" then
				return tostring(l.Title or l.Name or l.Text or l[1] or "")
			end

			return tostring(l or "")
		end
		local function getItemNumber(l: any, m: number): number
			if type(l) == "table" then
				return tonumber(l.Number or l.Value or l[2]) or m
			end

			return m
		end

		function k.new(l, m: DragListArgs__DARKLUA_TYPE_o)
			local n = setmetatable({}, { __index = k })

			n.Section = l
			n.Label = m.Label
			n.Desc = m.Desc
			n.Values = m.Values or l.Flags
			n.Flag = if type(m.Value) == "string" then m.Value else nil
			n.Callback = m.Callback
			n.State = f.new()
			n.External = m.External
			n.Window = l.Tab.Window
			n.HasNumber = m.HasNumber or false
			n.MinNumber = m.MinNumber or 1
			n.MaxNumber = m.MaxNumber or math.huge
			n.DefaultNumber = m.DefaultNumber or 1

			if not n.HasNumber and type(m.Default) == "table" then
				for o, p in ipairs(m.Default) do
					if type(p) == "table" and (p.Number ~= nil or p.Value ~= nil) then
						n.HasNumber = true

						break
					end
				end
			end

			local o = m.Default or {}
			local p = {}

			for q, r in ipairs(o) do
				if n.HasNumber then
					if type(r) == "table" then
						table.insert(p, {
							Title = getItemTitle(r),
							Number = getItemNumber(r, n.DefaultNumber),
						})
					else
						table.insert(p, {
							Title = tostring(r),
							Number = n.DefaultNumber,
						})
					end
				else
					table.insert(p, getItemTitle(r))
				end
			end

			n.Default = p

			if n.Flag and n.Values then
				local q = n.Values[n.Flag]

				n.Value = if type(q) == "table" then q else n.Default
				n.Values[n.Flag] = n.Value
			else
				n.Value = n.Default
			end

			n.Controller = i.new(n.Value, function(q)
				n:_commitValue(q)
			end)

			n:_build()

			return n
		end
		function k:GetValue(): { any }
			return self.Value
		end
		function k:GetValuesMap(): { [string]: number }
			local l = {}

			for m, n in ipairs(self.Value) do
				if type(n) == "table" then
					l[n.Title] = n.Number or self.DefaultNumber
				else
					l[tostring(n)] = 1
				end
			end

			return l
		end
		function k:GetItemNumber(l: string | number): number?
			if type(l) == "number" then
				local m = self.Value[l]

				if m then
					return if type(m) == "table" then m.Number else 1
				end
			elseif type(l) == "string" then
				for m, n in ipairs(self.Value) do
					if getItemTitle(n) == l then
						return if type(n) == "table" then n.Number else 1
					end
				end
			end

			return nil
		end
		function k:SetItemNumber(l: string | number, m: number)
			m = math.clamp(m, self.MinNumber, self.MaxNumber)

			local n = false

			if type(l) == "number" then
				local o = self.Value[l]

				if o then
					if type(o) == "table" then
						o.Number = m
					else
						self.Value[l] = {
							Title = tostring(o),
							Number = m,
						}
					end

					n = true
				end
			elseif type(l) == "string" then
				for o, p in ipairs(self.Value) do
					if getItemTitle(p) == l then
						if type(p) == "table" then
							p.Number = m
						else
							self.Value[o] = {
								Title = l,
								Number = m,
							}
						end

						n = true

						break
					end
				end
			end
			if n then
				self:_commitValue(self.Value)
				self:_rebuildList()
			end
		end
		function k:_commitValue(l: { any })
			self.Value = l

			if self.Flag and self.Values then
				self.Values[self.Flag] = l
			end

			self.State:Fire(l)

			if self.Callback then
				self.Callback(l)
			end
		end
		function k:_build()
			local l = g.new(self.Section.Container, self.Label, self.Desc)

			self.Row = l

			local m = l.TopContainer:FindFirstChildOfClass("TextLabel")

			if m then
				m.Size = UDim2.new(1, 0, 0, 0)
				m.AutomaticSize = Enum.AutomaticSize.Y
				m.TextWrapped = true
			end

			local n = c("Frame", {
				Name = "ListContainer",
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				Parent = l.RowContainer,
			})

			b.Padding(4, 0, 0, 0, n)

			self.ListContainer = n

			local o = b.ListLayout(6, Enum.FillDirection.Vertical, n)

			if self.External then
				self.Popup = c("ScrollingFrame", {
					Name = self.Label .. "AddMorePopup",
					Visible = false,
					Size = UDim2.fromOffset(180, 0),
					BackgroundColor3 = e.Theme.CardBackgroundColor,
					CanvasSize = UDim2.fromOffset(0, 0),
					AutomaticCanvasSize = Enum.AutomaticSize.None,
					ScrollingDirection = Enum.ScrollingDirection.Y,
					ScrollBarThickness = 5,
					ScrollBarImageColor3 = e.Theme.AccentColor,
					ScrollBarImageTransparency = 0,
					BorderSizePixel = 0,
					ZIndex = 100,
					Active = true,
					Parent = self.Window:GetOverlayParent(),
				})

				b.Corner(e.Surface.ControlRadius, self.Popup)

				self.PopupStroke = b.Stroke(1, e.Theme.BorderColor, self.Popup)

				b.YPadding(6, self.Popup)

				self.PopupLayout = b.ListLayout(4, Enum.FillDirection.Vertical, self.Popup)
				self.PopupLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

				self.PopupLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
					self:_updatePopupCanvas()

					if self.IsOpen then
						self:_syncPopupPosition()
					end
				end)
			end

			self:_rebuildList()
		end
		function k:_rebuildList()
			if self.ItemFrames then
				for l, m in ipairs(self.ItemFrames) do
					m:Destroy()
				end
			end

			self.ItemFrames = {}

			if self.AddMoreRow then
				self.AddMoreRow:Destroy()

				self.AddMoreRow = nil
				self.AddMoreTextBox = nil
			end

			self.Controller = i.new(self.Value, function(l)
				self:_commitValue(l)
			end)

			local l = e.getFont("Body")

			for m, n in ipairs(self.Value) do
				local o = getItemTitle(n)
				local p = if type(n) == "table" then (n.Number or self.DefaultNumber) else nil
				local q = c("Frame", {
					Name = "ItemRow",
					Size = UDim2.new(1, 0, 0, 36),
					BackgroundColor3 = e.Theme.CardBackgroundColor,
					LayoutOrder = m,
					Parent = self.ListContainer,
				})

				b.Corner(e.Surface.ControlRadius, q)
				b.Stroke(1, e.Theme.BorderColor, q)
				b.FullPadding(10, q)

				local r = b.ListLayout(10, Enum.FillDirection.Horizontal, q)

				r.VerticalAlignment = Enum.VerticalAlignment.Center

				local s = c("ImageButton", {
					Name = "DragHandle",
					Size = UDim2.fromOffset(16, 16),
					BackgroundTransparency = 1,
					Image = h["lucide-menu"],
					ImageColor3 = e.Theme.TextMutedColor,
					Parent = q,
				})

				s.MouseEnter:Connect(function()
					if self.IsLocked then
						return
					end

					d.Play(s, {
						ImageColor3 = e.Theme.AccentColor,
					})
				end)
				s.MouseLeave:Connect(function()
					if self.IsLocked then
						return
					end

					d.Play(s, {
						ImageColor3 = e.Theme.TextMutedColor,
					})
				end)

				local t = 0

				if self.External then
					t += 26
				end
				if self.HasNumber or p ~= nil then
					t += 58
				end

				local u = -32 - t
				local v = c("TextLabel", {
					Name = "ItemText",
					Size = UDim2.new(1, u, 1, 0),
					Text = o,
					TextColor3 = e.Theme.TextColor,
					TextSize = l.Size - 1,
					FontFace = Font.new(l.Font, l.Weight, l.Style),
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
					BackgroundTransparency = 1,
					Parent = q,
				})

				if self.HasNumber or p ~= nil then
					local w = c("Frame", {
						Name = "NumberContainer",
						Size = UDim2.fromOffset(48, 24),
						BackgroundColor3 = e.Theme.BackgroundColor,
						Parent = q,
					})

					b.Corner(e.Surface.ControlRadius, w)

					local x = b.Stroke(1, e.Theme.BorderColor, w)
					local y = c("TextBox", {
						Name = "NumberTextBox",
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = 1,
						Text = tostring(p or self.DefaultNumber),
						TextColor3 = e.Theme.TextColor,
						TextSize = l.Size - 2,
						FontFace = Font.new(l.Font, l.Weight, l.Style),
						TextXAlignment = Enum.TextXAlignment.Center,
						TextYAlignment = Enum.TextYAlignment.Center,
						ClearTextOnFocus = false,
						MultiLine = false,
						Parent = w,
					})

					y.Focused:Connect(function()
						if self.IsLocked then
							y:ReleaseFocus()

							return
						end

						x.Color = e.Theme.AccentColor
					end)
					y.FocusLost:Connect(function()
						x.Color = e.Theme.BorderColor

						local z = tonumber(y.Text)

						if z then
							z = math.clamp(math.floor(z), self.MinNumber, self.MaxNumber)

							if type(self.Value[m]) == "table" then
								self.Value[m].Number = z
							else
								self.Value[m] = {
									Title = o,
									Number = z,
								}
							end

							y.Text = tostring(z)

							self:_commitValue(self.Value)
						else
							local A = if type(self.Value[m]) == "table"
								then self.Value[m].Number
								else self.DefaultNumber

							y.Text = tostring(A or self.DefaultNumber)
						end
					end)
				end
				if self.External then
					local w = c("ImageButton", {
						Name = "DeleteButton",
						Size = UDim2.fromOffset(16, 16),
						BackgroundTransparency = 1,
						Image = h["lucide-trash-2"],
						ImageColor3 = e.Theme.TextMutedColor,
						Parent = q,
					})

					w.MouseEnter:Connect(function()
						if self.IsLocked then
							return
						end

						d.Play(w, {
							ImageColor3 = e.Theme.ErrorColor,
						})
					end)
					w.MouseLeave:Connect(function()
						if self.IsLocked then
							return
						end

						d.Play(w, {
							ImageColor3 = e.Theme.TextMutedColor,
						})
					end)
					w.MouseButton1Click:Connect(function()
						if self.IsLocked then
							return
						end

						table.remove(self.Value, m)
						self:_commitValue(self.Value)
						self:_rebuildList()
					end)
				end

				q.MouseEnter:Connect(function()
					if self.IsLocked or self.Controller.IsDragging then
						return
					end

					d.Play(q, {
						BackgroundColor3 = e.Theme.PrimaryHoverColor,
					})
				end)
				q.MouseLeave:Connect(function()
					if self.IsLocked or self.Controller.IsDragging then
						return
					end

					d.Play(q, {
						BackgroundColor3 = e.Theme.CardBackgroundColor,
					})
				end)
				s.InputBegan:Connect(function(w)
					if self.IsLocked then
						return
					end
					if
						w.UserInputType == Enum.UserInputType.MouseButton1
						or w.UserInputType == Enum.UserInputType.Touch
					then
						local x = {}

						for y, z in ipairs(self.ListContainer:GetChildren()) do
							if z:IsA("Frame") and z.Name == "ItemRow" then
								table.insert(x, z)
							end
						end

						table.sort(x, function(y, z)
							return y.LayoutOrder < z.LayoutOrder
						end)

						local y = table.find(x, q)

						if y then
							self.Controller:StartDrag(y, q, self.ListContainer)
						end
					end
				end)
				table.insert(self.ItemFrames, q)
			end

			if self.External then
				local m = c("Frame", {
					Name = "AddMoreRow",
					Size = UDim2.new(1, 0, 0, 36),
					BackgroundColor3 = e.Theme.CardBackgroundColor,
					LayoutOrder = #self.Value + 1,
					Parent = self.ListContainer,
				})

				b.Corner(e.Surface.ControlRadius, m)
				b.Stroke(1, e.Theme.BorderColor, m)
				b.FullPadding(10, m)

				self.AddMoreRow = m

				local n = b.ListLayout(10, Enum.FillDirection.Horizontal, m)

				n.VerticalAlignment = Enum.VerticalAlignment.Center

				local o = c("ImageLabel", {
					Name = "AddIcon",
					Size = UDim2.fromOffset(16, 16),
					BackgroundTransparency = 1,
					Image = h["lucide-plus"],
					ImageColor3 = e.Theme.TextMutedColor,
					Parent = m,
				})
				local p = c("TextBox", {
					Name = "AddTextBox",
					Size = UDim2.new(1, -32, 1, 0),
					BackgroundTransparency = 1,
					Text = "",
					PlaceholderText = "Add More...",
					PlaceholderColor3 = e.Theme.TextMutedColor,
					TextColor3 = e.Theme.TextColor,
					TextSize = l.Size - 1,
					FontFace = Font.new(l.Font, l.Weight, l.Style),
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Center,
					ClearTextOnFocus = false,
					MultiLine = false,
					Parent = m,
				})

				self.AddMoreTextBox = p

				p.Focused:Connect(function()
					self:Open()
					self:_mountPopupItems()
					self:_filterItems(p.Text)
				end)
				p:GetPropertyChangedSignal("Text"):Connect(function()
					if p:IsFocused() then
						self:_filterItems(p.Text)
					end
				end)
				p:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
					if self.IsOpen then
						self:_syncPopupPosition()
					end
				end)
				p:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
					if self.IsOpen then
						self:_syncPopupPosition()
					end
				end)
				p.FocusLost:Connect(function(q)
					if q then
						local r = string.lower(p.Text)
						local s = nil

						for t, u in ipairs(self.External) do
							local v = getItemTitle(u)

							if string.lower(v) == r then
								local w = false

								for x, y in ipairs(self.Value) do
									if getItemTitle(y) == v then
										w = true

										break
									end
								end

								if not w then
									s = u

									break
								end
							end
						end

						if s then
							if self.HasNumber then
								table.insert(self.Value, {
									Title = getItemTitle(s),
									Number = getItemNumber(s, self.DefaultNumber),
								})
							else
								table.insert(self.Value, getItemTitle(s))
							end

							self:_commitValue(self.Value)
							self:Close()
							self:_rebuildList()
						else
							task.delay(0.1, function()
								if not self.IsOpen then
									return
								end

								local t = j:GetMouseLocation()

								if self:IsPointInside(t) then
									return
								end

								self:Close()
							end)
						end
					else
						task.delay(0.1, function()
							if not self.IsOpen then
								return
							end

							local r = j:GetMouseLocation()

							if self:IsPointInside(r) then
								return
							end

							self:Close()
						end)
					end
				end)
			end
		end
		function k:_updatePopupCanvas()
			if not self.Popup or not self.PopupLayout then
				return
			end

			local l = self.PopupLayout.AbsoluteContentSize.Y + 12
			local m = math.min(l, 140)

			self.Popup.CanvasSize = UDim2.fromOffset(0, l)
			self.Popup.Size = UDim2.fromOffset(self.Popup.Size.X.Offset, m)
			self.Popup.ScrollingEnabled = l > 140
		end
		function k:_syncPopupPosition()
			if not self.Popup or not self.AddMoreTextBox then
				return
			end

			local l = self.AddMoreTextBox.AbsolutePosition
			local m = self.AddMoreTextBox.AbsoluteSize
			local n = 180

			if self.AddMoreRow then
				n = math.max(self.AddMoreRow.AbsoluteSize.X, 180)
			end

			local o = self.Window:GetOverlayParent()
			local p = o.AbsolutePosition
			local q = l.X - p.X

			if self.AddMoreRow then
				q = self.AddMoreRow.AbsolutePosition.X - p.X
			end

			local r = l.Y - p.Y

			self.Popup.Position = UDim2.fromOffset(q, r + m.Y + 6)
			self.Popup.Size = UDim2.fromOffset(n, self.Popup.Size.Y.Offset)
		end
		function k:_mountPopupItems()
			if not self.Popup or not self.External then
				return
			end
			if self.PopupItemButtons then
				for l, m in pairs(self.PopupItemButtons) do
					m.Button:Destroy()
				end
			end

			self.PopupItemButtons = {}

			local l = e.getFont("Body")

			for m, n in ipairs(self.External) do
				local o = getItemTitle(n)
				local p = false

				for q, r in ipairs(self.Value) do
					if getItemTitle(r) == o then
						p = true

						break
					end
				end

				if p then
					continue
				end

				local q = c("TextButton", {
					Name = o,
					Size = UDim2.new(1, -12, 0, 28),
					BackgroundColor3 = e.Theme.BackgroundColor,
					AutoButtonColor = false,
					Text = "",
					ZIndex = 101,
					Parent = self.Popup,
				})

				b.Corner(e.Surface.ControlRadius, q)
				b.XPadding(8, q)

				local r = b.ListLayout(6, Enum.FillDirection.Horizontal, q)

				r.VerticalAlignment = Enum.VerticalAlignment.Center

				local s = c("TextLabel", {
					Name = "Title",
					Size = UDim2.new(1, 0, 0, 16),
					BackgroundTransparency = 1,
					Text = o,
					TextColor3 = e.Theme.TextColor,
					TextSize = l.Size - 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					FontFace = Font.new(l.Font, l.Weight, l.Style),
					ZIndex = 102,
					Parent = q,
				})

				q.MouseButton1Click:Connect(function()
					if self.HasNumber then
						table.insert(self.Value, {
							Title = o,
							Number = getItemNumber(n, self.DefaultNumber),
						})
					else
						table.insert(self.Value, o)
					end

					self:_commitValue(self.Value)
					self:Close()
					self:_rebuildList()
				end)
				q.MouseEnter:Connect(function()
					d.Play(q, {
						BackgroundColor3 = e.Theme.SecondaryHoverColor,
					})
				end)
				q.MouseLeave:Connect(function()
					d.Play(q, {
						BackgroundColor3 = e.Theme.BackgroundColor,
					})
				end)

				self.PopupItemButtons[o] = {
					Button = q,
					TextLabel = s,
				}
			end

			self:_updatePopupCanvas()
		end
		function k:_filterItems(l: string)
			if not self.Popup or not self.PopupItemButtons then
				return
			end

			l = string.lower(l or "")

			for m, n in pairs(self.PopupItemButtons) do
				if l == "" then
					n.Button.Visible = true
				else
					local o = string.lower(m)

					if string.find(o, l, 1, true) then
						n.Button.Visible = true
					else
						n.Button.Visible = false
					end
				end
			end

			task.defer(function()
				self:_updatePopupCanvas()

				if self.IsOpen then
					self:_syncPopupPosition()
				end
			end)
		end
		function k:IsPointInside(l: Vector2)
			local m = game:GetService("GuiService"):GetGuiInset()
			local n = l - m

			local function isInside(o: GuiObject)
				if not o then
					return false
				end

				local p = o.AbsolutePosition
				local q = o.AbsoluteSize

				return n.X >= p.X and n.X <= p.X + q.X and n.Y >= p.Y and n.Y <= p.Y + q.Y
			end

			return isInside(self.AddMoreTextBox) or (self.Popup and self.Popup.Visible and isInside(self.Popup))
		end
		function k:Open()
			if self.IsLocked or not self.Popup then
				return
			end

			self.Window:SetActiveDropdown(self)

			self.IsOpen = true

			self:_updatePopupCanvas()
			self:_syncPopupPosition()

			self.Popup.Visible = true
			self.PopupStroke.Color = e.Theme.BorderColor
			self.PopupStroke.Thickness = 1
		end
		function k:Close()
			if not self.IsOpen then
				return
			end

			self.IsOpen = false

			if self.Popup then
				self.Popup.Visible = false
			end
			if self.Window.ActiveDropdown == self then
				self.Window:SetActiveDropdown(nil)
			end
			if self.AddMoreTextBox then
				if self.AddMoreTextBox:IsFocused() then
					self.AddMoreTextBox:ReleaseFocus()
				end

				self.AddMoreTextBox.Text = ""
			end

			self:_filterItems("")
		end
		function k:Toggle()
			if self.IsLocked then
				return
			end
			if self.IsOpen then
				self:Close()
			else
				self:Open()
			end
		end
		function k:OnChange(l: ({ any }) -> ())
			self.State:Add(l)
		end
		function k:Lock(l: string)
			if self.IsLocked then
				return
			end

			self.IsLocked = true

			if self.Row then
				self.Row:Lock(l)
			end
		end
		function k:UnLock()
			if not self.IsLocked then
				return
			end

			self.IsLocked = false

			if self.Row then
				self.Row:UnLock()
			end
		end
		function k:AddDisclosure()
			return self.Row:CreateDisclosure(self.Section)
		end
		function k:Destroy()
			if self.Popup then
				self.Popup:Destroy()
			end
		end

		return k
	end
	function a.y()
		local b = a.load("a")
		local c = a.load("d")
		local d = a.load("f")
		local e = a.load("i")
		local f = a.load("m")
		local g = game:GetService("UserInputService")
		local h = a.load("g")
		local i = a.load("l")
		local j = a.load("n")
		local k = a.load("o")
		local l = a.load("p")
		local m = a.load("q")
		local n = a.load("r")
		local o = a.load("s")
		local p = a.load("t")
		local q = a.load("v")
		local r = a.load("x")
		local s = {}

		s.__index = s

		function s.new(t, u)
			local v = setmetatable({}, s)

			v.Row, v.Section, v.Flags, v.Tab = t, u, u.Flags, u.Tab
			v.Window = v.Tab.Window
			v.Label = t.Label or "Advanced settings"
			v.ModalOwner = v
			v.Connections = {}

			f.Create(v, t.SettingsButton)

			v.Scroll = b("ScrollingFrame", {
				Name = "AdvancedScroll",
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				CanvasSize = UDim2.fromOffset(0, 0),
				ScrollBarThickness = 3,
				ScrollBarImageColor3 = c.Theme.AccentColor,
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ZIndex = 102,
				Parent = v.ModalBody,
			})
			v.Container = b("Frame", {
				Name = "AdvancedContent",
				Size = UDim2.new(1, -4, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = c.Theme.GroupColor,
				BorderSizePixel = 0,
				ZIndex = 103,
				Parent = v.Scroll,
			})

			d.Corner(c.Surface.Radius, v.Container)
			d.Stroke(1, c.Theme.BorderColor, v.Container)

			v.Layout = e.Attach(v.Container)

			v.Layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				v.Scroll.CanvasSize = UDim2.fromOffset(0, v.Layout.AbsoluteContentSize.Y / d.LayoutScale(v.Scroll) + 4)
			end)

			for w, x in ipairs({
				"OnScreenKeyboardVisible",
				"OnScreenKeyboardSize",
				"OnScreenKeyboardPosition",
			}) do
				table.insert(
					v.Connections,
					g:GetPropertyChangedSignal(x):Connect(function()
						if v.IsOpen and v.Window.ActiveDropdown == v then
							v:_syncPopupPosition()
						end
					end)
				)
			end

			t.RowContainer.Destroying:Connect(function()
				v:Close(true)

				v.Disposed = true

				for w, x in ipairs(v.Connections) do
					x:Disconnect()
				end

				v.ModalBody:Destroy()
			end)

			local w = t.RowContainer

			while w and w ~= v.Window.Screen do
				if w:IsA("GuiObject") then
					table.insert(
						v.Connections,
						w:GetPropertyChangedSignal("Visible"):Connect(function()
							if
								v.IsOpen and not f.Visible(t.RowContainer, v.ParentModal and v.ParentModal.ModalBody)
							then
								v:Close(true)
							end
						end)
					)
				end

				w = w.Parent
			end

			return v
		end
		function s:_syncPopupPosition()
			local t, u = f.Geometry(self)
			local v = if g.TouchEnabled then 44 else 28

			self.ModalClose.Position = UDim2.fromOffset(12, 12)
			self.ModalClose.Size = UDim2.fromOffset(v, v)
			self.ModalTitle.Position = UDim2.fromOffset(v + 22, 12)
			self.ModalTitle.Size = UDim2.new(1, -v - 34, 0, v)
			self.ModalDescription.Visible = false
			self.Scroll.Position = UDim2.fromOffset(12, v + 24)
			self.Scroll.Size = UDim2.new(1, -24, 0, math.max(1, u - v - 36))

			f.Retarget(self)
		end
		function s:OnModalOpening()
			self.Row.DisclosureOpened = true

			h.Play(self.Row.SettingsButton, {
				Rotation = 90,
				ImageColor3 = c.Theme.AccentColor,
			})
		end
		function s:BeforeModalClose()
			local t = g:GetFocusedTextBox()

			if t and t:IsDescendantOf(self.ModalBody) then
				t:ReleaseFocus(false)
			end
		end
		function s:OnModalClosed()
			self.Row.DisclosureOpened = false

			h.Play(self.Row.SettingsButton, {
				Rotation = 0,
				ImageColor3 = c.Theme.TextMutedColor,
			})
		end
		function s:SetVisible(t)
			if t then
				self:Open()
			else
				self:Close()
			end
		end
		function s:AddToggle(t)
			return i.new(self, t)
		end
		function s:AddDropdown(t)
			return j.new(self, t)
		end
		function s:AddChipSelect(t)
			return q.new(self, t)
		end
		function s:AddSlider(t)
			return k.new(self, t)
		end
		function s:AddKeybind(t)
			return l.new(self, t)
		end
		function s:AddButton(t)
			return m.new(self, t)
		end
		function s:AddTextbox(t)
			return n.new(self, t)
		end
		function s:AddSeparator(t)
			return o.new(self, t)
		end
		function s:AddLabel(t)
			return p.new(self, t)
		end
		function s:AddDragList(t)
			return r.new(self, t)
		end

		return s
	end
	function a.z()
		local b = a.load("j")
		local c = {}

		c.__index = c

		function c.new(d: { string | { Text: string, Callback: (() -> ())? } }, e: ControllerCallback__DARKLUA_TYPE_p?)
			local f = setmetatable({}, c)

			f.Items = table.clone(d or {})
			f.Callback = e
			f.IsLocked = false
			f.LockReason = ""
			f.State = b.new()

			return f
		end
		function c:ClickButton(d: string)
			if self.IsLocked then
				return
			end

			local e = nil

			for f, g in ipairs(self.Items) do
				if type(g) == "table" and g.Text == d then
					e = g.Callback

					break
				end
			end

			self.State:Fire(d)

			if e then
				e()
			end
			if self.Callback then
				self.Callback(d)
			end
		end
		function c:Lock(d: string)
			if self.IsLocked then
				return
			end

			self.IsLocked = true
			self.LockReason = d or "locked"

			self.State:Fire(nil)
		end
		function c:UnLock()
			if not self.IsLocked then
				return
			end

			self.IsLocked = false
			self.LockReason = ""

			self.State:Fire(nil)
		end

		return c
	end
	function a.A()
		local b = a.load("f")
		local c = a.load("a")
		local d = a.load("g")
		local e = a.load("d")
		local f = a.load("k")
		local g = a.load("z")
		local h = {}

		function h.new(i, j: MultiButtonArgs__DARKLUA_TYPE_q)
			local k = setmetatable({}, { __index = h })

			k.Section = i
			k.Label = j.Label
			k.Desc = j.Desc
			k.Items = j.Items or {}
			k.Callback = j.Callback
			k.FullWidth = j.FullWidth == true
			k.Wrapped = j.Wrapped == true
			k.ItemNames = {}

			for l, m in ipairs(k.Items) do
				if type(m) == "table" then
					table.insert(k.ItemNames, m.Text)
				else
					table.insert(k.ItemNames, tostring(m))
				end
			end

			k.Controller = g.new(k.Items, k.Callback)

			k:_build()
			k.Controller.State:Add(function()
				k:_render()
			end)

			return k
		end
		function h:_build()
			local i = e.getFont("Body")
			local j = f.new(self.Section.Container, self.Label, self.Desc)

			self.Row = j

			local k = not (self.Wrapped or self.FullWidth)
			local l = {
				Name = "ButtonsContainer",
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				Parent = j.RowContainer,
			}

			if self.Wrapped then
				l.Size = UDim2.new(1, 0, 0, 0)
				l.AutomaticSize = Enum.AutomaticSize.Y
			else
				l.Size = UDim2.new(1, 0, 0, 28)
			end
			if k then
				l.CanvasSize = UDim2.new(0, 0, 0, 0)
				l.ScrollingDirection = Enum.ScrollingDirection.X
				l.ScrollBarThickness = 0
				l.ElasticBehavior = Enum.ElasticBehavior.Always
			end

			local m = c(k and "ScrollingFrame" or "Frame", l)

			b.Padding(4, 0, 0, 0, m)

			local n = b.ListLayout(8, Enum.FillDirection.Horizontal, m)

			n.VerticalAlignment = Enum.VerticalAlignment.Center

			if self.Wrapped then
				n.Wraps = true
			end

			self.Buttons = {}

			for o, p in ipairs(self.ItemNames) do
				local q
				local r = Enum.AutomaticSize.None

				if self.Wrapped then
					if self.FullWidth then
						local s = #self.ItemNames

						if s == 1 then
							q = UDim2.new(1, 0, 0, 28)
						elseif s == 2 then
							q = UDim2.new(0.49, -4, 0, 28)
						else
							q = UDim2.new(0.32, -6, 0, 28)
						end
					else
						q = UDim2.new(0, 0, 0, 28)
						r = Enum.AutomaticSize.X
					end
				else
					if self.FullWidth then
						q = UDim2.new(1 / #self.ItemNames, -((#self.ItemNames - 1) * 8) / #self.ItemNames, 1, 0)
					else
						q = UDim2.new(0, 0, 1, 0)
						r = Enum.AutomaticSize.X
					end
				end

				local s = c("TextButton", {
					Name = p .. "Button",
					AutomaticSize = r,
					Size = q,
					BackgroundColor3 = e.Theme.CardBackgroundColor,
					AutoButtonColor = false,
					Text = "",
					Parent = m,
				})

				b.Corner(e.Surface.ControlRadius, s)

				local t = b.Stroke(1, e.Theme.BorderColor, s)

				b.Padding(5, 5, 10, 10, s)

				local u = b.ListLayout(6, Enum.FillDirection.Horizontal, s)

				u.VerticalAlignment = Enum.VerticalAlignment.Center
				u.HorizontalAlignment = Enum.HorizontalAlignment.Center

				local v = c("TextLabel", {
					Name = "TextLabel",
					AutomaticSize = Enum.AutomaticSize.XY,
					BackgroundTransparency = 1,
					Text = p,
					TextColor3 = e.Theme.TextColor,
					TextSize = i.Size - 3,
					FontFace = Font.new(i.Font, i.Weight, i.Style),
					Parent = s,
				})
				local w = {
					Button = s,
					Stroke = t,
					TextLabel = v,
					IsHovered = false,
					IsPressed = false,
				}

				self.Buttons[p] = w

				s.MouseEnter:Connect(function()
					if self.Controller.IsLocked then
						return
					end

					w.IsHovered = true

					self:_renderButton(p)
				end)
				s.MouseLeave:Connect(function()
					if self.Controller.IsLocked then
						return
					end

					w.IsHovered = false
					w.IsPressed = false

					self:_renderButton(p)
				end)

				local function activate()
					if self.Controller.IsLocked then
						return
					end

					w.IsPressed = true

					self:_renderButton(p)
					task.delay(0.1, function()
						w.IsPressed = false

						self:_renderButton(p)
					end)
					self.Controller:ClickButton(p)
				end

				s.Activated:Connect(activate)
				b.TouchTarget(s, activate)
			end

			if k then
				n:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
					m.CanvasSize = UDim2.new(0, n.AbsoluteContentSize.X / b.LayoutScale(m) + 10, 0, 0)
				end)
			end

			self.ScrollingFrame = m

			self:_render()
		end
		function h:_renderButton(i: string)
			local j = self.Buttons[i]

			if not j then
				return
			end

			local k = j.IsHovered
			local l = self.Controller.IsLocked
			local m = j.IsPressed
			local n
			local o
			local p
			local q

			if l then
				n = e.Theme.CardBackgroundColor
				o = e.Theme.TextMutedColor
				p = e.Theme.BorderColor
				q = 1
			elseif m then
				n = e.Theme.AccentColor
				o = e.Theme.White
				p = e.Theme.AccentColor
				q = 1.5
			else
				n = k and e.Theme.SecondaryHoverColor or e.Theme.CardBackgroundColor
				o = k and e.Theme.AccentColor or e.Theme.TextColor
				p = k and e.Theme.AccentColor or e.Theme.BorderColor
				q = 1
			end

			d.Play(j.Button, { BackgroundColor3 = n }, { Time = 0.12 })
			d.Play(j.TextLabel, { TextColor3 = o }, { Time = 0.12 })
			d.Play(j.Stroke, {
				Color = p,
				Thickness = q,
			}, { Time = 0.12 })
		end
		function h:_render()
			for i, j in pairs(self.Buttons) do
				self:_renderButton(i)
			end
		end
		function h:Lock(i: string)
			self.Controller:Lock(i)

			if self.Row then
				self.Row:Lock(i)
			end
		end
		function h:UnLock()
			self.Controller:UnLock()

			if self.Row then
				self.Row:UnLock()
			end
		end
		function h:OnChange(i: (string) -> ())
			self.Controller.State:Add(i)
		end
		function h:AddDisclosure()
			return self.Row:CreateDisclosure(self.Section)
		end

		return h
	end
	function a.B()
		local b = a.load("f")
		local c = a.load("a")
		local d = a.load("d")
		local e = a.load("k")
		local f = a.load("l")
		local g = a.load("n")
		local h = a.load("o")
		local i = a.load("p")
		local j = a.load("q")
		local k = a.load("r")
		local l = a.load("A")
		local m = {}

		m.__index = m

		function m.new(n, o: ManyArgs__DARKLUA_TYPE_r)
			local p = setmetatable({}, m)

			p.IsMany = true
			p.Section = n
			p.Tab = n.Tab
			p.Window = n.Tab.Window
			p.Flags = n.Flags
			p.Container = p
			p.Elements = {}
			p.ElementCount = 0

			p:_build(o)

			return p
		end
		function m:_build(n: ManyArgs__DARKLUA_TYPE_r)
			local o = e.new(self.Section.Container, n.Label, nil)

			self.Row = o
			self.LabelText = o.TopContainer:FindFirstChildOfClass("TextLabel")

			if self.LabelText then
				self.LabelText.Size = UDim2.fromScale(0.5, 0)
			end

			local p = c("Frame", {
				Name = "TopRightContainer",
				Size = UDim2.new(0.5, -10, 1, 0),
				BackgroundTransparency = 1,
				Parent = o.TopContainer,
			})
			local q = b.ListLayout(8, Enum.FillDirection.Horizontal, p)

			q.HorizontalAlignment = Enum.HorizontalAlignment.Right
			q.VerticalAlignment = Enum.VerticalAlignment.Center
			self.TopRightContainer = p

			local r = c("Frame", {
				Name = "ManyElementsRow",
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				Parent = o.RowContainer,
			})
			local s = b.ListLayout(8, Enum.FillDirection.Horizontal, r)

			s.VerticalAlignment = Enum.VerticalAlignment.Center
			s.Wraps = true
			self.ElementsRow = r

			local t = c("Frame", {
				Name = "ManySliderRow",
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				LayoutOrder = 3,
				Parent = o.RowContainer,
			})

			self.SliderRow = t
			self.HasTopRight = false
			self.RightContainer = p
			self.LayoutMode = n.Layout or "Horizontal"

			if n.Desc and n.Desc ~= "" then
				local u = d.getFont("Body")
				local v = c("Frame", {
					Name = "DescRow",
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
					LayoutOrder = 999,
					Parent = o.RowContainer,
				})

				c("TextLabel", {
					AutomaticSize = Enum.AutomaticSize.Y,
					Size = UDim2.new(1, 0, 0, 0),
					TextSize = u.Size - 3,
					Text = n.Desc,
					TextColor3 = d.Theme.TextMutedColor,
					FontFace = Font.new(u.Font, u.Weight, u.Style),
					TextWrapped = true,
					TextYAlignment = Enum.TextYAlignment.Top,
					TextXAlignment = Enum.TextXAlignment.Left,
					BackgroundTransparency = 1,
					Parent = v,
				})
			end
		end
		function m:AddToggle(n)
			self.ElementCount = self.ElementCount + 1
			self.HasTopRight = true
			self.RightContainer = self.TopRightContainer

			local o = f.new(self, n)

			table.insert(self.Elements, o)

			return o
		end
		function m:AddDropdown(n)
			self.ElementCount = self.ElementCount + 1

			if not self.HasTopRight and self.LabelText then
				self.LabelText.Size = UDim2.new(1, 0, 0, 0)
				self.LabelText.AutomaticSize = Enum.AutomaticSize.Y
			end

			self.RightContainer = self.ElementsRow

			local o = g.new(self, n)

			table.insert(self.Elements, o)

			return o
		end
		function m:AddSlider(n)
			self.ElementCount = self.ElementCount + 1
			self.RightContainer = self.SliderRow

			local o = h.new(self, n)

			table.insert(self.Elements, o)

			return o
		end
		function m:AddKeybind(n)
			self.ElementCount = self.ElementCount + 1

			if self.HasTopRight then
				self.RightContainer = self.TopRightContainer
			else
				self.RightContainer = self.ElementsRow
			end

			local o = i.new(self, n)

			table.insert(self.Elements, o)

			return o
		end
		function m:AddButton(n)
			self.ElementCount = self.ElementCount + 1

			if not self.HasTopRight and self.LabelText then
				self.LabelText.Size = UDim2.new(1, 0, 0, 0)
				self.LabelText.AutomaticSize = Enum.AutomaticSize.Y
			end

			self.RightContainer = self.ElementsRow

			local o = j.new(self, n)

			table.insert(self.Elements, o)

			return o
		end
		function m:AddTextbox(n)
			self.ElementCount = self.ElementCount + 1

			if not self.HasTopRight and self.LabelText then
				self.LabelText.Size = UDim2.new(1, 0, 0, 0)
				self.LabelText.AutomaticSize = Enum.AutomaticSize.Y
			end

			self.RightContainer = self.ElementsRow

			local o = k.new(self, n)

			table.insert(self.Elements, o)

			return o
		end
		function m:AddMultiButton(n)
			self.ElementCount = self.ElementCount + 1

			if not self.HasTopRight and self.LabelText then
				self.LabelText.Size = UDim2.new(1, 0, 0, 0)
				self.LabelText.AutomaticSize = Enum.AutomaticSize.Y
			end

			self.RightContainer = self.ElementsRow

			local o = l.new(self, n)

			table.insert(self.Elements, o)

			return o
		end
		function m:Lock(n: string)
			if self.IsLocked then
				return
			end

			self.IsLocked = true

			self.Row:Lock(n)

			for o, p in ipairs(self.Elements) do
				if p.Lock then
					p:Lock(n)
				end
			end
		end
		function m:UnLock()
			if not self.IsLocked then
				return
			end

			self.IsLocked = false

			self.Row:UnLock()

			for n, o in ipairs(self.Elements) do
				if o.UnLock then
					o:UnLock()
				end
			end
		end

		return m
	end
	function a.C()
		local b = a.load("a")
		local c = a.load("d")
		local d = a.load("f")
		local e = a.load("i")
		local f = a.load("l")
		local g = a.load("n")
		local h = a.load("o")
		local i = a.load("p")
		local j = a.load("q")
		local k = a.load("r")
		local l = a.load("s")
		local m = a.load("t")
		local n = a.load("y")
		local o = a.load("k")
		local p = a.load("B")
		local q = a.load("x")
		local r = a.load("v")
		local s = a.load("A")

		o.DisclosureClass = n

		local t = {}

		t.__index = t

		function t.new(u, v: string, w: SectionOptions__DARKLUA_TYPE_s?)
			local x = c.getFont("Header")
			local y = b("Frame", {
				Name = v .. "Section",
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Parent = u.Left or u.Container,
			})

			d.ListLayout(c.Spacing.SectionHeader, Enum.FillDirection.Vertical, y)
			b("TextLabel", {
				Name = "Title",
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				Text = string.upper(v),
				TextColor3 = c.Theme.TextMutedColor,
				TextSize = x.Size - 2,
				FontFace = Font.new(x.Font, x.Weight, x.Style),
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundTransparency = 1,
				LayoutOrder = 1,
				Parent = y,
			})

			local z = b("Frame", {
				Name = "Content",
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = c.Theme.GroupColor,
				BackgroundTransparency = c.Surface.Group,
				BorderSizePixel = 0,
				LayoutOrder = 2,
				Parent = y,
			})

			d.Corner(c.Surface.Radius, z)

			local A = d.Stroke(1, c.Theme.BorderColor, z)

			A.Transparency = c.Surface.Border

			e.Attach(z)

			return setmetatable({
				Title = v,
				Frame = y,
				Container = z,
				Tab = u.Tab or u,
				Page = u,
				Flags = u.Window.Flags,
				Side = if w and w.Side == "Right" then "Right" else "Left",
				LayoutRow = w and w.Row,
				FullWidth = w and w.FullWidth == true,
			}, t)
		end
		function t:SetFlags(u: { [string]: any })
			self.Flags = u

			return self
		end
		function t:SetFlgas(u: { [string]: any })
			return self:SetFlags(u)
		end
		function t:AddToggle(u)
			return f.new(self, u)
		end
		function t:AddDropdown(u)
			return g.new(self, u)
		end
		function t:AddSlider(u)
			return h.new(self, u)
		end
		function t:AddKeybind(u)
			return i.new(self, u)
		end
		function t:AddButton(u)
			return j.new(self, u)
		end
		function t:AddTextbox(u)
			return k.new(self, u)
		end
		function t:AddSeparator(u)
			return l.new(self, u)
		end
		function t:AddLabel(u)
			return m.new(self, u)
		end
		function t:AddMany(u)
			return p.new(self, u)
		end
		function t:AddDragList(u)
			return q.new(self, u)
		end
		function t:AddChipSelect(u)
			return r.new(self, u)
		end
		function t:AddMultiButton(u)
			return s.new(self, u)
		end

		return t
	end
	function a.D()
		local b = {}

		local function orderedSections(c)
			local d = table.clone(c)

			table.sort(d, function(e, f)
				if e.row ~= f.row then
					return e.row < f.row
				end
				if e.side ~= f.side then
					return e.side == "Left"
				end

				return e.index < f.index
			end)

			return d
		end
		local function placeSection(c, d, e, f, g)
			table.insert(c, {
				index = d.index,
				x = e,
				y = f,
				width = g,
			})
		end

		function b.Calculate(c, d)
			local e = orderedSections(c)
			local f = {}
			local g = {
				Left = 0,
				Right = 0,
			}
			local h = 1

			while h <= #e do
				local i = e[h]
				local j = e[h + 1]
				local k = d.twoColumns
					and j
					and i.row == j.row
					and i.side == "Left"
					and j.side == "Right"
					and not i.fullWidth
					and not j.fullWidth

				if k then
					local l = (d.width - d.columnGap) / 2

					placeSection(f, i, 0, g.Left, l)
					placeSection(f, j, l + d.columnGap, g.Right, l)

					g.Left += i.height + d.sectionGap
					g.Right += j.height + d.sectionGap
					h += 2
				else
					local l = math.max(g.Left, g.Right)

					placeSection(f, i, 0, l, d.width)

					g.Left = l + i.height + d.sectionGap
					g.Right = g.Left

					h += 1
				end
			end

			return {
				placements = f,
				height = math.max(0, math.max(g.Left, g.Right) - d.sectionGap),
			}
		end

		return b
	end
	function a.E()
		local b = a.load("a")
		local c = a.load("d")
		local d = a.load("f")
		local e = a.load("C")
		local f = a.load("D")
		local g = {}

		g.__index = g

		function g.new(h, i: string, j: PageOptions__DARKLUA_TYPE_t?)
			local k = setmetatable({
				Tab = h,
				Window = h.Window,
				Name = i,
				Columns = if j and j.Columns == 2 then 2 else 1,
				Sections = {},
			}, g)

			k.Container = b("ScrollingFrame", {
				Name = i .. "Page",
				Size = UDim2.fromScale(1, 1),
				Visible = false,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				CanvasSize = UDim2.fromOffset(0, 0),
				ScrollingDirection = Enum.ScrollingDirection.Y,
				ScrollBarThickness = 4,
				ScrollBarImageColor3 = c.Theme.AccentColor,
				Active = true,
				Parent = h.Root,
			})
			k.Left = b("Frame", {
				Name = "Left",
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				Parent = k.Container,
			})
			k.Right = b("Frame", {
				Name = "Right",
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				Parent = k.Container,
			})
			k.LeftLayout = d.ListLayout(c.Spacing.Sections, Enum.FillDirection.Vertical, k.Left)
			k.RightLayout = d.ListLayout(c.Spacing.Sections, Enum.FillDirection.Vertical, k.Right)

			local l = false

			local function update()
				if l then
					return
				end

				l = true

				task.defer(function()
					l = false

					if k.Container.Parent then
						k:Layout()
					end
				end)
			end

			k.RequestLayout = update

			k.Container:GetPropertyChangedSignal("AbsoluteSize"):Connect(update)
			k.LeftLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(update)
			k.RightLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(update)
			k.Container:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
				if h.ActivePage == k then
					h:UpdateSticky()
				end
			end)

			return k
		end
		function g:_layoutRows(h, i, j, k)
			local l = d.LayoutScale(self.Container)
			local m = {}

			for n, o in ipairs(self.Sections) do
				table.insert(m, {
					index = n,
					row = o.LayoutRow or n,
					side = o.Side,
					fullWidth = o.FullWidth,
					height = o.Frame.AbsoluteSize.Y / l,
				})
			end

			local n = f.Calculate(m, {
				width = math.max(0, h - i * 2),
				columnGap = c.Spacing.Columns,
				sectionGap = j,
				twoColumns = k,
			})

			for o, p in ipairs(n.placements) do
				local q = self.Sections[p.index].Frame

				q.Parent = self.Container
				q.Position = UDim2.fromOffset(i + p.x, i + (self.NavigationInset or 0) + p.y)
				q.Size = UDim2.fromOffset(p.width, 0)
			end

			self.Left.Visible, self.Right.Visible = false, false
			self.Container.CanvasSize = UDim2.fromOffset(0, n.height + i * 2 + (self.NavigationInset or 0))
		end
		function g:Layout()
			local h = self.Container.AbsoluteSize.X / d.LayoutScale(self.Container)
			local i = h < c.Layout.Compact
			local j = if i then c.Spacing.CompactContent else c.Spacing.Content
			local k = c.Spacing.Columns
			local l = self.Columns == 2 and not self.Window.IsMobile and h - j * 2 >= c.Layout.TwoColumns

			if self.HasRows then
				self:_layoutRows(h, j, if i then c.Spacing.CompactSections else c.Spacing.Sections, l)

				return
			end

			self.LeftLayout.Padding = UDim.new(0, if i then c.Spacing.CompactSections else c.Spacing.Sections)
			self.RightLayout.Padding = self.LeftLayout.Padding

			local m = j + (self.NavigationInset or 0)

			self.Left.Position = UDim2.fromOffset(j, m)
			self.Left.Size = if l then UDim2.new(0.5, -j - k / 2, 0, 0) else UDim2.new(1, -j * 2, 0, 0)
			self.Right.Size = self.Left.Size
			self.Right.Visible = l

			for n, o in ipairs(self.Sections) do
				o.Frame.Parent = if l and o.Side == "Right" then self.Right else self.Left
				o.Frame.LayoutOrder = if not l and o.Side == "Right" then #self.Sections + n else n
			end

			self.Right.Position = UDim2.new(0.5, k / 2, 0, m)

			local n =
				math.max(self.LeftLayout.AbsoluteContentSize.Y, if l then self.RightLayout.AbsoluteContentSize.Y else 0)

			self.Container.CanvasSize = UDim2.fromOffset(0, n + j * 2 + (self.NavigationInset or 0))
		end
		function g:AddSection(h: string, i)
			local j = e.new(self, h, i)

			table.insert(self.Sections, j)

			self.HasRows = self.HasRows or j.LayoutRow ~= nil or j.FullWidth

			j.Frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(self.RequestLayout)
			self:Layout()

			return j
		end

		return g
	end
	function a.F()
		local b = a.load("a")
		local c = a.load("d")
		local d = a.load("f")
		local e = a.load("g")
		local f = a.load("h")
		local g = a.load("E")
		local h = game:GetService("UserInputService")
		local i = {}

		i.__index = i

		function i.new(j, k: string, l: string?)
			local m = c.getFont("Body")
			local n = j.TabStyle ~= "HeaderBar"
			local o = setmetatable({
				Name = k,
				Window = j,
				Pages = {},
				IsActive = false,
			}, i)

			o.Button = b("TextButton", {
				Name = k .. "Tab",
				Size = if n then UDim2.new(1, 0, 0, 44) else UDim2.fromOffset(0, 44),
				AutomaticSize = if n then Enum.AutomaticSize.None else Enum.AutomaticSize.X,
				BackgroundColor3 = c.Theme.PrimaryHoverColor,
				BackgroundTransparency = 1,
				AutoButtonColor = false,
				Text = "",
				Parent = j.TabList,
			})

			d.Corner(8, o.Button)

			if n then
				o.Indicator = b("Frame", {
					Name = "ActiveIndicator",
					Size = UDim2.fromOffset(3, 18),
					Position = UDim2.new(0, 0, 0.5, -9),
					BackgroundColor3 = c.Theme.AccentColor,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Parent = o.Button,
				})

				d.Corner(999, o.Indicator)
			else
				d.XPadding(12, o.Button)

				d.ListLayout(6, Enum.FillDirection.Horizontal, o.Button).VerticalAlignment =
					Enum.VerticalAlignment.Center
			end

			o.IconLabel = b("ImageLabel", {
				Name = "Icon",
				Size = UDim2.fromOffset(20, 20),
				BackgroundTransparency = 1,
				Image = l or f["lucide-grid"],
				ImageColor3 = c.Theme.TextMutedColor,
				AnchorPoint = if n then Vector2.new(0.5, 0.5) else Vector2.zero,
				Position = if n then UDim2.fromScale(0.5, 0.5) else UDim2.fromOffset(0, 0),
				Parent = o.Button,
			})
			o.TitleLabel = b("TextLabel", {
				Name = "Title",
				Visible = not n,
				Size = UDim2.fromOffset(0, 18),
				AutomaticSize = Enum.AutomaticSize.X,
				Text = k,
				TextColor3 = c.Theme.TextMutedColor,
				TextSize = 13,
				FontFace = Font.new(m.Font, m.Weight, m.Style),
				BackgroundTransparency = 1,
				Parent = o.Button,
			})
			o.Root = b("CanvasGroup", {
				Name = k .. "Content",
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				Visible = false,
				Parent = j.Content,
			})
			o.PageBar = b("Frame", {
				Name = "PageBar",
				Size = UDim2.fromOffset(120, if h.TouchEnabled then 44 else 40),
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 6),
				BackgroundColor3 = c.Theme.GroupColor,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Visible = false,
				ZIndex = 20,
				Parent = o.Root,
			})

			d.Corner(999, o.PageBar)

			o.PageGradient = b("UIGradient", {
				Color = ColorSequence.new(c.Theme.GradientTop, c.Theme.GradientBottom),
				Rotation = 90,
				Parent = o.PageBar,
			})
			o.PageShadow = b("Frame", {
				Name = "PageShadow",
				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, 8),
				Size = UDim2.fromOffset(126, 46),
				BackgroundColor3 = Color3.new(0, 0, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Visible = false,
				ZIndex = 19,
				Parent = o.Root,
			})

			d.Corner(999, o.PageShadow)

			o.PageShadowStroke = d.Stroke(3, Color3.new(0, 0, 0), o.PageShadow)
			o.PageShadowStroke.Transparency = 1
			o.PageStroke = d.Stroke(1, c.Theme.BorderColor, o.PageBar)
			o.PageStroke.Transparency = 1
			o.PageList = b("ScrollingFrame", {
				Name = "Pages",
				Size = UDim2.new(1, -24, 1, 0),
				Position = UDim2.fromOffset(12, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				CanvasSize = UDim2.fromOffset(0, 0),
				AutomaticCanvasSize = Enum.AutomaticSize.X,
				ScrollingDirection = Enum.ScrollingDirection.X,
				ScrollBarThickness = 0,
				ZIndex = 21,
				Parent = o.PageBar,
			})
			o.PageLayout = d.ListLayout(8, Enum.FillDirection.Horizontal, o.PageList)
			o.PageLayout.VerticalAlignment = Enum.VerticalAlignment.Center

			local function align()
				o:_resizePageBar()

				o.PageLayout.HorizontalAlignment = if o.PageLayout.AbsoluteContentSize.X
						<= o.PageList.AbsoluteSize.X
					then Enum.HorizontalAlignment.Center
					else Enum.HorizontalAlignment.Left
			end

			o.Root:GetPropertyChangedSignal("AbsoluteSize"):Connect(align)
			o.PageList:GetPropertyChangedSignal("AbsoluteSize"):Connect(align)
			o.PageLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(align)

			local p, q = 0, false

			o.Button.Activated:Connect(function()
				if q then
					q = false

					return
				end

				j:ActivateTab(o)
			end)
			o.Button.MouseEnter:Connect(function()
				if n and h:GetLastInputType() ~= Enum.UserInputType.Touch then
					j:ShowTooltip(o.Button, k)
				end
				if not o.IsActive then
					e.Play(o.Button, { BackgroundTransparency = 0.6 }, {
						Time = c.Motion.Interaction,
					})
				end
			end)
			o.Button.MouseLeave:Connect(function()
				j:HideTooltip()

				if not o.IsActive then
					e.Play(o.Button, { BackgroundTransparency = 1 }, {
						Time = c.Motion.Interaction,
					})
				end
			end)
			o.Button.InputBegan:Connect(function(r)
				if not n or r.UserInputType ~= Enum.UserInputType.Touch then
					return
				end

				p += 1

				local s, t = p, r.Position

				task.delay(0.45, function()
					if s == p and r.UserInputState ~= Enum.UserInputState.End and (r.Position - t).Magnitude < 8 then
						q = true

						j:ShowTooltip(o.Button, k)
					end
				end)
			end)
			o.Button.InputEnded:Connect(function(r)
				if r.UserInputType == Enum.UserInputType.Touch then
					p += 1

					j:HideTooltip()
				end
			end)

			return o
		end
		function i:_createPage(j, k)
			local l = g.new(self, j, k)

			table.insert(self.Pages, l)

			local m = c.getFont("Body")

			l.Button = b("TextButton", {
				Name = j,
				Text = j,
				Size = UDim2.fromOffset(0, if h.TouchEnabled then 44 else 40),
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundTransparency = 1,
				AutoButtonColor = false,
				TextColor3 = c.Theme.TextMutedColor,
				TextSize = 13,
				FontFace = Font.new(m.Font, m.Weight, m.Style),
				ZIndex = 22,
				Parent = self.PageList,
			})

			d.XPadding(12, l.Button)

			l.Underline = b("Frame", {
				Name = "Underline",
				Size = UDim2.new(1, -24, 0, 2),
				Position = UDim2.new(0, 12, 1, -5),
				BackgroundColor3 = c.Theme.AccentColor,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ZIndex = 23,
				Parent = l.Button,
			})

			l.Button.Activated:Connect(function()
				self:ActivatePage(l)
			end)
			l.Button.MouseEnter:Connect(function()
				e.Play(l.Button, {
					TextColor3 = c.Theme.TextColor,
				}, {
					Time = c.Motion.Interaction,
				})
			end)
			l.Button.MouseLeave:Connect(function()
				e.Play(l.Button, {
					TextColor3 = if self.ActivePage == l then c.Theme.AccentColor else c.Theme.TextMutedColor,
				}, {
					Time = c.Motion.Interaction,
				})
			end)

			if not self.ActivePage then
				self:ActivatePage(l)
			end

			return l
		end
		function i:_resizePageBar()
			local j = if h.TouchEnabled then 44 else 40
			local k = math.min(
				math.max(24, self.PageLayout.AbsoluteContentSize.X + 24),
				math.max(24, self.Root.AbsoluteSize.X - 24)
			)

			self.PageBar.Size = UDim2.fromOffset(k, j)
			self.PageShadow.Size = UDim2.fromOffset(k + 4, j + 4)
		end
		function i:_layoutPages()
			self.PageBar.Visible = self.HasPages == true
			self.PageShadow.Visible = self.HasPages == true

			self:_resizePageBar()

			for j, k in ipairs(self.Pages) do
				k.Container.Position = UDim2.fromOffset(0, 0)
				k.Container.Size = UDim2.fromScale(1, 1)
				k.NavigationInset = if self.HasPages then self.PageBar.Size.Y.Offset + 12 else 0

				k:Layout()
			end
		end
		function i:AddPage(j: string, k: PageOptions__DARKLUA_TYPE_t?)
			self.HasPages = true

			local l = self:_createPage(j, k)

			self:_layoutPages()

			return l
		end
		function i:AddSection(j: string, k)
			if not self.DefaultPage then
				self.DefaultPage = self:_createPage("General", nil)
			end

			self:_layoutPages()

			return self.DefaultPage:AddSection(j, k)
		end
		function i:ActivatePage(j)
			self.Window:CloseOverlays(true)
			assert(j.Tab == self, "Page belongs to another tab")

			if self.Window.ActiveDropdown then
				self.Window:CloseOverlays(true)
			end

			self.ActivePage = j
			self.Container = j.Container

			for k, l in ipairs(self.Pages) do
				l.Container.Visible = l == j

				e.Play(l.Button, {
					TextColor3 = if l == j then c.Theme.AccentColor else c.Theme.TextMutedColor,
				}, {
					Time = c.Motion.Transition,
				})
				e.Play(l.Underline, {
					BackgroundTransparency = if l == j then 0 else 1,
				}, {
					Time = c.Motion.Transition,
				})
			end

			self:UpdateSticky()

			if self.IsActive then
				self.Root.GroupTransparency = 1

				e.Play(self.Root, { GroupTransparency = 0 }, {
					Time = c.Motion.Transition,
				})
			end
		end
		function i:UpdateSticky()
			local j = if self.ActivePage then math.clamp(self.ActivePage.Container.CanvasPosition.Y / 24, 0, 1) else 0

			self.PageBar.BackgroundTransparency = 1 - j * (1 - c.Surface.Glass)
			self.PageStroke.Transparency = 1 - j * (1 - c.Surface.Border)
			self.PageShadow.BackgroundTransparency = 1 - j * 0.18
			self.PageShadowStroke.Transparency = 1 - j * 0.06
		end
		function i:SetActive(j: boolean)
			self.IsActive = j
			self.Root.Visible = j

			local k = if j then c.Theme.AccentColor else c.Theme.TextMutedColor

			e.Play(self.IconLabel, { ImageColor3 = k }, {
				Time = c.Motion.Interaction,
			})
			e.Play(self.TitleLabel, { TextColor3 = k }, {
				Time = c.Motion.Interaction,
			})
			e.Play(self.Button, {
				BackgroundTransparency = if j then 0.25 else 1,
			}, {
				Time = c.Motion.Interaction,
			})

			if self.Indicator then
				e.Play(self.Indicator, {
					BackgroundTransparency = if j then 0 else 1,
				}, {
					Time = c.Motion.Interaction,
				})
			end
			if j then
				self.Root.GroupTransparency = 1

				e.Play(self.Root, { GroupTransparency = 0 }, {
					Time = c.Motion.Transition,
				})
			end
		end

		return i
	end
	function a.G()
		local b = a.load("a")
		local c = a.load("f")
		local d = a.load("d")

		return function(e)
			local f = b("Frame", {
				Name = "WindowShadow",
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ZIndex = 1,
				Parent = e.Screen,
			})
			local g = {}

			for h = 12, 2, -2 do
				local i = 0.95 + h / 12 * 0.04
				local j = b("Frame", {
					Name = "ShadowLayer",
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 4),
					Size = UDim2.new(1, h * 2, 1, h * 2),
					BackgroundColor3 = Color3.new(0, 0, 0),
					BackgroundTransparency = i,
					BorderSizePixel = 0,
					ZIndex = 1,
					Parent = f,
				})

				c.Corner(d.Surface.WindowRadius + h, j)
				table.insert(g, {
					Frame = j,
					Transparency = i,
				})
			end

			local h = b("Frame", {
				Name = "WindowBorder",
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ZIndex = 2,
				Parent = e.Screen,
			})

			c.Corner(d.Surface.WindowRadius, h)

			local i = c.Stroke(1, d.Theme.BorderColor, h)

			e.WindowShadow, e.WindowBorder, e.WindowStroke = f, h, i

			local function update()
				if not f.Parent then
					return
				end

				f.Size, h.Size = e.Container.Size, e.Container.Size
				f.Position, h.Position = e.Container.Position, e.Container.Position
				f.Visible, h.Visible = e.Container.Visible, e.Container.Visible

				local j = 1 - e.Container.GroupTransparency

				i.Transparency = 1 - 0.95 * j

				for k, l in ipairs(g) do
					l.Frame.BackgroundTransparency = 1 - (1 - l.Transparency) * j
				end
			end

			for j, k in ipairs({
				"Size",
				"Position",
				"Visible",
				"GroupTransparency",
			}) do
				e:_connect(e.Container:GetPropertyChangedSignal(k), update)
			end

			update()
		end
	end
end

local b = a.load("a")
local c = a.load("d")
local d = a.load("e")
local e = a.load("f")
local f = a.load("g")
local g = a.load("F")
local h = a.load("m")
local i = a.load("G")
local j = a.load("h")
local k = {}

k.Config = d

local l = game:GetService("Players")
local m = game:GetService("UserInputService")
local n = {
	["Mobile Portrait"] = Vector2.new(390, 844),
	["Mobile Landscape"] = Vector2.new(844, 390),
}

local function validateLayoutPreview(o)
	assert(o == "Auto" or n[o] ~= nil, "Invalid LayoutPreview mode")

	return o
end
local function _isMobile()
	local o = m.TouchEnabled and not m.KeyboardEnabled

	return o
end
local function _formatKeyCode(o: Enum.KeyCode)
	if o == Enum.KeyCode.Unknown then
		return "None"
	end

	return o.Name
end

export type WindowOptions = {
	LayoutPreview: ("Auto" | "Mobile Portrait" | "Mobile Landscape")?,
	TabStyle: ("SideBar" | "HeaderBar")?,
	SidebarWidth: number?,
	Size: UDim2?,
	Width: number?,
	Height: number?,
	Target: Instance?,
	DisplayOrder: number?,
	Transparency: number?,
}

function k.new(o: (Instance | WindowOptions)?)
	local p = setmetatable({ Connections = {} }, { __index = k })
	local q = nil
	local r: WindowOptions = {}

	if typeof(o) == "Instance" then
		q = o
	elseif typeof(o) == "table" then
		q = o.Target
		r = o
	end

	p.TabStyle = r.TabStyle or "SideBar"
	p.LayoutPreview = validateLayoutPreview(r.LayoutPreview or "Auto")
	p.SidebarWidth = r.SidebarWidth or c.Layout.Sidebar

	if r.Size then
		p.WindowSize = r.Size
	else
		local s = if r.Width ~= nil then r.Width else (if _isMobile() then d.MobileWidth else d.Width)
		local t = if r.Height ~= nil then r.Height else d.Height

		assert(type(s) == "number" and s > 0 and s < math.huge, "Window Width must be a positive finite number")
		assert(type(t) == "number" and t > 0 and t < math.huge, "Window Height must be a positive finite number")

		p.WindowSize = UDim2.fromOffset(s, t)
	end

	p.Transparency = if r.Transparency ~= nil then r.Transparency else 0
	p.DisplayOrder = if r.DisplayOrder ~= nil then r.DisplayOrder else 99999

	p:_build(q)

	return p
end
function k:_connect(o, p)
	local q = o:Connect(p)

	table.insert(self.Connections, q)

	return q
end
function k:_build(o: Instance?)
	local function buildScreen()
		if o then
			return o
		end

		local p = l.LocalPlayer:WaitForChild("PlayerGui")
		local q = p:FindFirstChild("Mheehub")

		if q then
			q:Destroy()
		end

		local r = Instance.new("ScreenGui")

		r.Name = "Mheehub"
		r.ResetOnSpawn = false
		r.IgnoreGuiInset = true
		r.DisplayOrder = self.DisplayOrder
		r.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		r.Parent = p

		return r
	end

	self.Screen = buildScreen()

	self.Screen.Destroying:Connect(function()
		for p, q in ipairs(self.Connections) do
			q:Disconnect()
		end

		self:HideTooltip()
	end)

	self.IsMobile = self.LayoutPreview ~= "Auto" or _isMobile()
	self.MinimizeKey = Enum.KeyCode.LeftControl
	self.IsListeningForMinimizeKey = false

	self:_container()
	i(self)
	self:_topBar()
	self:_tabBar()
	self:_backdrop()
	self:_shortcut()

	self.ActiveDropdown = nil
	self.ActiveTab = nil
	self.Tabs = {}
	self.Flags = nil
	self.IsDragging = false
	self.DragInput = nil
	self.DragStart = nil
	self.StartPosition = nil
	self.IsTransitioning = false

	self:_responsive()
	self:_connectMinimizeKeybind()

	return self
end
function k:_shortcut()
	local o = c.getFont("Header")

	self.ShortcutContainer = b("TextButton", {
		Name = "ShortcutLauncher",
		Size = UDim2.fromOffset(36, 36),
		BackgroundColor3 = Color3.fromRGB(18, 18, 18),
		Position = UDim2.new(0.5, 0, 0, 18),
		AnchorPoint = Vector2.new(0.5, 0),
		AutoButtonColor = false,
		ClipsDescendants = true,
		Text = "",
		Visible = false,
		ZIndex = 200,
		Parent = self.Screen,
	})

	e.Corner(999, self.ShortcutContainer)

	local p = e.Stroke(1, Color3.fromRGB(38, 38, 38), self.ShortcutContainer)

	self.ShortcutStroke = p

	local q = b("TextLabel", {
		Name = "MLabel",
		Size = UDim2.fromOffset(36, 36),
		Position = UDim2.fromOffset(0, 0),
		BackgroundTransparency = 1,
		TextColor3 = c.Theme.AccentColor,
		FontFace = Font.new(o.Font, o.Weight, o.Style),
		TextSize = o.Size,
		Text = "M",
		TextXAlignment = Enum.TextXAlignment.Center,
		TextYAlignment = Enum.TextYAlignment.Center,
		ZIndex = 201,
		Parent = self.ShortcutContainer,
	})

	self.ShortcutMLabel = q

	local r = b("TextLabel", {
		Name = "TextLabel",
		Size = UDim2.new(1, -36, 1, 0),
		Position = UDim2.fromOffset(30, 0),
		BackgroundTransparency = 1,
		TextColor3 = c.Theme.TextColor,
		FontFace = Font.new(o.Font, o.Weight, o.Style),
		TextSize = o.Size - 1,
		Text = "HEEHUB",
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Center,
		TextTransparency = 1,
		ZIndex = 201,
		Parent = self.ShortcutContainer,
	})

	self.ShortcutTextLabel = r

	self.ShortcutContainer.MouseButton1Click:Connect(function()
		if self.ShortcutDragDelta and self.ShortcutDragDelta > 5 then
			return
		end

		self:Restore()
	end)
	self:_enableShortcutDrag()

	if not self.IsMobile then
		self.ShortcutContainer.MouseEnter:Connect(function()
			f.Play(self.ShortcutContainer, {
				Size = UDim2.fromOffset(120, 36),
				BackgroundColor3 = Color3.fromRGB(24, 24, 24),
			})
			f.Play(r, { TextTransparency = 0 })
			f.Play(p, {
				Color = c.Theme.AccentColor,
			})
		end)
		self.ShortcutContainer.MouseLeave:Connect(function()
			f.Play(self.ShortcutContainer, {
				Size = UDim2.fromOffset(36, 36),
				BackgroundColor3 = Color3.fromRGB(18, 18, 18),
			})
			f.Play(r, { TextTransparency = 1 })
			f.Play(p, {
				Color = Color3.fromRGB(38, 38, 38),
			})
		end)
	end
end
function k:_container()
	local o = m.TouchEnabled and not m.KeyboardEnabled
	local p = self.WindowSize

	self.Container = b("CanvasGroup", {
		Name = "AmityWindow",
		BackgroundColor3 = c.Theme.PrimaryColor,
		BackgroundTransparency = 1,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = p,
		GroupTransparency = self.Transparency,
		BorderSizePixel = 0,
		ClipsDescendants = true,
		Active = true,
		ZIndex = 2,
		Parent = self.Screen,
	})

	e.Corner(c.Surface.WindowRadius, self.Container)
	b("TextButton", {
		Name = "MobileModalLock",
		Size = UDim2.fromOffset(0, 0),
		BackgroundTransparency = 1,
		Text = "",
		Modal = true,
		Active = true,
		Parent = self.Container,
	})

	if m.TouchEnabled then
		b("UISizeConstraint", {
			MaxSize = Vector2.new(math.huge, 500),
			Parent = self.Container,
		})
	end

	self.BackgroundMain = b("Frame", {
		Name = "BackgroundMain",
		Size = UDim2.fromScale(1, 1),
		BorderSizePixel = 0,
		BackgroundColor3 = c.Theme.White,
		BackgroundTransparency = c.Surface.Main,
		Parent = self.Container,
	})

	e.Corner(c.Surface.WindowRadius, self.BackgroundMain)
	b("UIGradient", {
		Color = ColorSequence.new(c.Theme.GradientTop, c.Theme.GradientBottom),
		Rotation = 90,
		Parent = self.BackgroundMain,
	})

	self.MainFrame = b("CanvasGroup", {
		Name = "MainFrame",
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = c.Theme.PrimaryColor,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Parent = self.Container,
	})

	b("UIListLayout", {
		Padding = UDim.new(0, 0),
		FillDirection = Enum.FillDirection.Vertical,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Parent = self.MainFrame,
	})
end
function k:_topBar()
	self.TopBar = b("Frame", {
		Name = "TopBar",
		Size = UDim2.new(1, 0, 0, 36),
		LayoutOrder = 1,
		BackgroundColor3 = c.Theme.CardBackgroundColor,
		BackgroundTransparency = 0.65,
		Parent = self.MainFrame,
	})

	e.XPadding(12, self.TopBar)
	b("UIListLayout", {
		Padding = UDim.new(0, 8),
		FillDirection = Enum.FillDirection.Horizontal,
		SortOrder = Enum.SortOrder.LayoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		Parent = self.TopBar,
	})

	self.CloseButton = b("TextButton", {
		Name = "CloseButton",
		LayoutOrder = 1,
		AutomaticSize = Enum.AutomaticSize.X,
		Size = UDim2.fromOffset(0, 22),
		BackgroundColor3 = c.Theme.ErrorColor,
		BorderSizePixel = 0,
		AutoButtonColor = false,
		Text = "Close",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 12,
		Font = Enum.Font.Code,
		Parent = self.TopBar,
	})

	e.Corner(6, self.CloseButton)
	e.XPadding(10, self.CloseButton)
	self.CloseButton.MouseEnter:Connect(function()
		f.Play(self.CloseButton, {
			BackgroundColor3 = Color3.fromRGB(200, 60, 60),
		}, { Time = 0.12 })
	end)
	self.CloseButton.MouseLeave:Connect(function()
		f.Play(self.CloseButton, {
			BackgroundColor3 = c.Theme.ErrorColor,
		}, { Time = 0.12 })
	end)

	local o = b("TextLabel", {
		Name = "LogoTerminal",
		LayoutOrder = 5,
		Size = UDim2.fromOffset(0, 0),
		AutomaticSize = Enum.AutomaticSize.XY,
		Text = "  \u{25cf} _ \u{25cf}  ",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 13,
		Font = Enum.Font.Code,
		BackgroundTransparency = 1,
		Parent = self.TopBar,
	})

	self.MinimizeKeyButton = b("TextButton", {
		Name = "MinimizeKeyButton",
		LayoutOrder = 4,
		AutomaticSize = Enum.AutomaticSize.X,
		Size = UDim2.fromOffset(82, 22),
		BackgroundColor3 = c.Theme.PrimaryColor,
		BorderSizePixel = 0,
		AutoButtonColor = false,
		Text = "",
		TextColor3 = c.Theme.TextColor,
		TextSize = 12,
		Font = Enum.Font.Code,
		Parent = self.TopBar,
	})

	e.Corner(999, self.MinimizeKeyButton)
	e.Stroke(1, c.Theme.BorderColor, self.MinimizeKeyButton)
	e.XPadding(8, self.MinimizeKeyButton)

	local p = {
		NORMAL = "  \u{25cf} _ \u{25cf}  ",
		BLINK = "  \u{b7} _ \u{b7}  ",
		LEFT = "\u{25cf} _ \u{25cf}  ",
		RIGHT = "  \u{25cf} _ \u{25cf}",
	}

	task.spawn(function()
		while o.Parent do
			task.wait(math.random(10, 30) / 10)

			local q = math.random(1, 10)

			if q <= 4 then
				o.Text = p.BLINK

				task.wait(0.12)

				o.Text = p.NORMAL
			elseif q <= 7 then
				local r = (math.random(1, 2) == 1) and p.LEFT or p.RIGHT

				o.Text = r

				task.wait(math.random(5, 15) / 10)

				o.Text = p.NORMAL
			else
				o.Text = p.NORMAL
			end
		end
	end)
	self.CloseButton.MouseButton1Click:Connect(function()
		self:Close()
	end)
	self.MinimizeKeyButton.MouseButton1Click:Connect(function()
		self.IsListeningForMinimizeKey = not self.IsListeningForMinimizeKey

		self:_renderMinimizeKeybind()
	end)
	self:_renderMinimizeKeybind()

	local q = b("Folder", {
		Name = "TopbarRightFolder",
		Parent = self.TopBar,
	})

	self.DiscordLink = "discord.gg/mylink"

	local r = b("TextButton", {
		Name = "DiscordButton",
		Size = UDim2.new(0, 0, 0, 24),
		AutomaticSize = Enum.AutomaticSize.X,
		Position = UDim2.new(1, -12, 0.5, 0),
		AnchorPoint = Vector2.new(1, 0.5),
		BackgroundColor3 = Color3.fromRGB(88, 101, 242),
		BorderSizePixel = 0,
		AutoButtonColor = false,
		Text = "",
		Parent = q,
	})

	e.Corner(999, r)
	e.XPadding(8, r)

	local s = b("UIListLayout", {
		Padding = UDim.new(0, 6),
		FillDirection = Enum.FillDirection.Horizontal,
		SortOrder = Enum.SortOrder.LayoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		Parent = r,
	})
	local t = b("ImageLabel", {
		Name = "DiscordIcon",
		LayoutOrder = 1,
		Size = UDim2.fromOffset(14, 14),
		BackgroundTransparency = 1,
		Image = j["lucide-link"],
		ImageColor3 = Color3.fromRGB(255, 255, 255),
		Parent = r,
	})

	self.DiscordText = b("TextLabel", {
		Name = "DiscordText",
		LayoutOrder = 2,
		Size = UDim2.new(0, 0, 1, 0),
		AutomaticSize = Enum.AutomaticSize.X,
		BackgroundTransparency = 1,
		Text = self.DiscordLink,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextSize = 12,
		Font = Enum.Font.Code,
		Parent = r,
	})

	local u = false

	r.MouseButton1Click:Connect(function()
		if u then
			return
		end

		u = true

		local v = (setclipboard or (getgenv and getgenv().setclipboard))

		if v then
			pcall(v, self.DiscordLink)
		end

		t.Image = j["lucide-check"]
		self.DiscordText.Text = "Copied!"

		f.Play(r, {
			BackgroundColor3 = c.Theme.SuccessColor,
		}, { Time = 0.15 })
		task.wait(1.5)

		t.Image = j["lucide-link"]
		self.DiscordText.Text = self.DiscordLink

		f.Play(r, {
			BackgroundColor3 = Color3.fromRGB(88, 101, 242),
		}, { Time = 0.15 })

		u = false
	end)
	r.MouseEnter:Connect(function()
		if u then
			return
		end

		f.Play(r, {
			BackgroundColor3 = Color3.fromRGB(71, 82, 196),
		}, { Time = 0.12 })
	end)
	r.MouseLeave:Connect(function()
		if u then
			return
		end

		f.Play(r, {
			BackgroundColor3 = Color3.fromRGB(88, 101, 242),
		}, { Time = 0.12 })
	end)
	self:_enableDrag()
end
function k:_tabBar()
	self.ContentContainer = b("Frame", {
		Name = "ContentContainer",
		Size = UDim2.new(1, 0, 1, -36),
		LayoutOrder = 2,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Parent = self.MainFrame,
	})

	if self.TabStyle == "HeaderBar" then
		e.ListLayout(0, Enum.FillDirection.Vertical, self.ContentContainer)
		self:_headBar()
		self:_content()
	else
		e.ListLayout(0, Enum.FillDirection.Horizontal, self.ContentContainer)
		self:_sideBar()
		self:_content()
	end
end
function k:_headBar()
	self.HeaderBarContainer = b("Frame", {
		Name = "HeaderBar",
		Size = UDim2.new(1, 0, 0, 48),
		LayoutOrder = 1,
		BackgroundColor3 = c.Theme.SecondaryColor,
		BackgroundTransparency = 0.35,
		BorderSizePixel = 0,
		Visible = true,
		Parent = self.ContentContainer,
	})

	e.ListLayout(12, Enum.FillDirection.Vertical, self.HeaderBarContainer)
	e.XPadding(10, self.HeaderBarContainer)

	self.TabList = b("Frame", {
		Name = "TabList",
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Parent = self.HeaderBarContainer,
	})
	e.ListLayout(0, Enum.FillDirection.Horizontal, self.TabList).VerticalAlignment = Enum.VerticalAlignment.Center
end
function k:_sideBar()
	self.SideBarContainer = b("Frame", {
		Name = "SideBar",
		Size = UDim2.new(0, self.SidebarWidth, 1, 0),
		LayoutOrder = 1,
		BackgroundColor3 = c.Theme.SecondaryColor,
		BackgroundTransparency = 0.35,
		BorderSizePixel = 0,
		Visible = true,
		Parent = self.ContentContainer,
	})

	b("Frame", {
		Name = "Divider",
		Size = UDim2.new(0, 1, 1, 0),
		Position = UDim2.new(1, -1, 0, 0),
		BackgroundColor3 = c.Theme.BorderColor,
		BorderSizePixel = 0,
		Parent = self.SideBarContainer,
	})

	self.TabList = b("ScrollingFrame", {
		Name = "TabList",
		Size = UDim2.new(1, -1, 1, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		CanvasSize = UDim2.fromScale(0, 0),
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
		ScrollingDirection = Enum.ScrollingDirection.Y,
		ScrollBarThickness = 3,
		ScrollBarImageColor3 = c.Theme.AccentColor,
		ScrollBarImageTransparency = 0,
		Parent = self.SideBarContainer,
	})

	e.ListLayout(4, Enum.FillDirection.Vertical, self.TabList)
	e.FullPadding(4, self.TabList)
end
function k:_content()
	local o = if self.TabStyle == "HeaderBar" then UDim2.new(1, 0, 1, -48) else UDim2.new(1, -self.SidebarWidth, 1, 0)

	self.Content = b("Frame", {
		Name = "Content",
		Size = o,
		Position = UDim2.new(0, 0, 0, 0),
		LayoutOrder = 2,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ClipsDescendants = true,
		Parent = self.ContentContainer,
	})
end
function k:_backdrop()
	self.BackDrop = b("TextButton", {
		Name = "OverlayBackdrop",
		BackgroundColor3 = Color3.new(0, 0, 0),
		BackgroundTransparency = 1,
		Text = "",
		AutoButtonColor = false,
		Active = true,
		Visible = false,
		ZIndex = 3,
		Parent = self.Screen,
	})

	e.Corner(c.Surface.WindowRadius, self.BackDrop)

	self.OverlayRoot = b("Frame", {
		Name = "OverlayRoot",
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		Visible = true,
		ZIndex = 4,
		Parent = self.Screen,
	})

	self.BackDrop.Activated:Connect(function()
		self:CloseOverlays(false)
	end)
	self:_connect(m.InputBegan, function(o)
		if o.KeyCode == Enum.KeyCode.Escape then
			if self.ActiveSlider then
				self.ActiveSlider:CloseEditor()
			elseif self.ActiveDropdown then
				self.ActiveDropdown:Close()
			end
		end

		local p = self.ActiveDropdown

		if
			p
			and not p.Modal
			and p.IsOpen
			and (o.UserInputType == Enum.UserInputType.MouseButton1 or o.UserInputType == Enum.UserInputType.Touch)
		then
			local q = if o.UserInputType == Enum.UserInputType.Touch
				then Vector2.new(o.Position.X, o.Position.Y)
				else m:GetMouseLocation()

			if not p:IsPointInside(q) then
				task.defer(function()
					if self.ActiveDropdown == p and p.IsOpen then
						p:Close()
					end
				end)
			end
		end
	end)

	local function sync()
		local o = self.Container.AbsolutePosition - self.OverlayRoot.AbsolutePosition

		self.BackDrop.Position = UDim2.fromOffset(o.X, o.Y)
		self.BackDrop.Size = UDim2.fromOffset(self.Container.AbsoluteSize.X, self.Container.AbsoluteSize.Y)

		if self.ActiveDropdown then
			self.ActiveDropdown:_syncPopupPosition()
		end
	end

	self.Container:GetPropertyChangedSignal("AbsolutePosition"):Connect(sync)
	self.Container:GetPropertyChangedSignal("AbsoluteSize"):Connect(sync)
	sync()
end
function k:HideTooltip()
	if self.Tooltip then
		self.Tooltip:Destroy()

		self.Tooltip = nil
	end
end
function k:ShowTooltip(o, p)
	self:HideTooltip()

	if self.IsDragging or self.ActiveDropdown or not self.Container.Visible then
		return
	end

	local q = o.AbsolutePosition - self.OverlayRoot.AbsolutePosition
	local r = c.getFont("Body")
	local s = b("TextLabel", {
		Name = "TabTooltip",
		Text = p,
		TextSize = 13,
		TextColor3 = c.Theme.TextColor,
		FontFace = Font.new(r.Font, r.Weight, r.Style),
		AutomaticSize = Enum.AutomaticSize.X,
		Size = UDim2.fromOffset(0, 32),
		Position = UDim2.fromOffset(q.X + o.AbsoluteSize.X + 8, q.Y + 6),
		BackgroundColor3 = c.Theme.GroupColor,
		BorderSizePixel = 0,
		ZIndex = 200,
		Parent = self.OverlayRoot,
	})

	e.XPadding(12, s)
	e.Corner(6, s)
	e.Stroke(1, c.Theme.BorderColor, s)

	self.Tooltip = s
end

local function responsiveSize(o)
	local p = o.Screen.AbsoluteSize
	local q = n[o.LayoutPreview]
	local r = q or p
	local s = if q then UDim2.fromOffset(d.MobileWidth, d.Height) else o.WindowSize
	local t = c.Layout.ViewportMargin * 2

	return Vector2.new(
		math.clamp(r.X * s.X.Scale + s.X.Offset, 1, math.max(1, math.min(r.X, p.X) - t)),
		math.clamp(r.Y * s.Y.Scale + s.Y.Offset, 1, math.max(1, math.min(r.Y, p.Y) - t))
	)
end
local function responsivePosition(o, p)
	local q, r = o.Screen.AbsoluteSize, o.Container.Position
	local s = c.Layout.ViewportMargin
	local t = Vector2.new(q.X * r.X.Scale + r.X.Offset, q.Y * r.Y.Scale + r.Y.Offset)

	o.Container.Position = if o.HasMoved
		then UDim2.fromOffset(
			math.clamp(t.X, p.X / 2 + s, math.max(p.X / 2 + s, q.X - p.X / 2 - s)),
			math.clamp(t.Y, p.Y / 2 + s, math.max(p.Y / 2 + s, q.Y - p.Y / 2 - s))
		)
		else UDim2.fromScale(0.5, 0.5)
end

function k:_updateResponsive()
	if not self.Container.Parent then
		return
	end

	local o = responsiveSize(self)

	self.IsMobile = self.LayoutPreview ~= "Auto" or _isMobile()
	self.Container.Size = UDim2.fromOffset(o.X, o.Y)

	responsivePosition(self, o)

	if self.DiscordText then
		self.DiscordText.Visible = o.X >= 600
	end
	if self.MinimizeKeyButton then
		self.MinimizeKeyButton.Visible = o.X >= 420
	end
end
function k:_responsive()
	self:_connect(self.Screen:GetPropertyChangedSignal("AbsoluteSize"), function()
		self:_updateResponsive()
	end)
	task.defer(function()
		self:_updateResponsive()
	end)
end
function k:SetLayoutPreview(o)
	validateLayoutPreview(o)

	if o == self.LayoutPreview then
		return self
	end

	self:CloseOverlays(true)
	self:HideTooltip()

	self.LayoutPreview = o

	self:_updateResponsive()
	task.defer(function()
		if not self.Container.Parent then
			return
		end

		for p, q in ipairs(self.Tabs) do
			q:_layoutPages()
		end
	end)

	return self
end
function k:_playAnimation() end
function k:_renderMinimizeKeybind()
	if not self.MinimizeKeyButton then
		return
	end

	self.MinimizeKeyButton.Text = if self.IsListeningForMinimizeKey then "..." else _formatKeyCode(self.MinimizeKey)
	self.MinimizeKeyButton.TextColor3 = if self.IsListeningForMinimizeKey
		then c.Theme.AccentColor
		else c.Theme.TextColor
end
function k:_toggleVisibility()
	if self.Container.Visible then
		self:Close()
	else
		self:Restore()
	end
end
function k:_connectMinimizeKeybind()
	self:_connect(m.InputBegan, function(o, p)
		if p then
			return
		end
		if o.UserInputType ~= Enum.UserInputType.Keyboard then
			return
		end
		if self.IsListeningForMinimizeKey then
			if o.KeyCode == Enum.KeyCode.Backspace then
				self.MinimizeKey = Enum.KeyCode.Unknown
				self.IsListeningForMinimizeKey = false

				self:_renderMinimizeKeybind()

				return
			end
			if o.KeyCode ~= Enum.KeyCode.Unknown then
				self.MinimizeKey = o.KeyCode
				self.IsListeningForMinimizeKey = false

				self:_renderMinimizeKeybind()
			end

			return
		end
		if self.MinimizeKey == Enum.KeyCode.Unknown then
			return
		end
		if o.KeyCode == self.MinimizeKey then
			self:_toggleVisibility()
		end
	end)
end
function k:Close()
	self:CloseOverlays(true)
	self:HideTooltip()

	self.DragInput = nil

	if self.IsDragging then
		self:_setDragging(false)
	end
	if self.IsTransitioning or not self.Container.Visible then
		return
	end

	self.IsTransitioning = true

	if self.ActiveDropdown then
		self:CloseOverlays(true)
	end

	self.ActiveDropdown = nil
	self.BackDrop.Visible = false
	self.OverlayRoot.Visible = false

	if self.ShortcutContainer then
		self.ShortcutContainer.Size = UDim2.fromOffset(36, 36)
		self.ShortcutContainer.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
	end
	if self.ShortcutTextLabel then
		self.ShortcutTextLabel.TextTransparency = 1
	end
	if self.ShortcutStroke then
		self.ShortcutStroke.Color = Color3.fromRGB(38, 38, 38)
	end

	local o = f.Play(self.Container, { GroupTransparency = 1 }, { Time = 0.18 })

	o.Completed:Connect(function()
		self.Container.Visible = false
		self.ShortcutContainer.Visible = true
		self.IsTransitioning = false
	end)
end
function k:Restore()
	if self.IsTransitioning or self.Container.Visible then
		return
	end

	self.IsTransitioning = true
	self.ShortcutContainer.Visible = false
	self.Container.Visible = true
	self.Container.GroupTransparency = 1
	self.OverlayRoot.Visible = true
	self.BackDrop.Visible = false

	local o = f.Play(self.Container, {
		GroupTransparency = self.Transparency,
	}, { Time = 0.18 })

	o.Completed:Connect(function()
		self.IsTransitioning = false
	end)
end
function k:_setDragging(o)
	self.IsDragging = o
	self.DragToken = (self.DragToken or 0) + 1

	local p = self.DragToken

	self:HideTooltip()

	self.OverlayRoot.Visible = not o and self.Container.Visible
	self.DragShield.Visible = o

	if not o then
		self.MainFrame.Visible = true
	end
	if o then
		self.DragSurfaceTransparency = self.DragSurfaceTransparency or self.BackgroundMain.BackgroundTransparency
	end

	local q = self.DragSurfaceTransparency or self.BackgroundMain.BackgroundTransparency
	local r = f.Play(self.BackgroundMain, {
		BackgroundTransparency = if o then math.max(q, 0.22) else q,
	}, {
		Time = c.Motion.Drag,
	})

	r.Completed:Once(function(s)
		if s == Enum.PlaybackState.Completed and p == self.DragToken and not self.IsDragging then
			self.DragSurfaceTransparency = nil
		end
	end)

	local s = f.Play(self.MainFrame, {
		GroupTransparency = if o then 1 else 0,
	}, {
		Time = c.Motion.Drag,
	})

	s.Completed:Connect(function(t)
		if t == Enum.PlaybackState.Completed and p == self.DragToken and self.IsDragging then
			self.MainFrame.Visible = false
		end
	end)
end
function k:_enableDrag()
	self.DragShield = b("TextButton", {
		Name = "DragShield",
		Size = UDim2.fromScale(1, 1),
		Text = "",
		BackgroundTransparency = 1,
		Active = true,
		Visible = false,
		ZIndex = 250,
		Parent = self.Container,
	})

	local function finish()
		self.DragInput = nil

		if self.IsDragging then
			self:_setDragging(false)
		end
	end

	self.TopBar.InputBegan:Connect(function(o)
		if self.ActiveDropdown or self.IsTransitioning then
			return
		end
		if o.UserInputType ~= Enum.UserInputType.MouseButton1 and o.UserInputType ~= Enum.UserInputType.Touch then
			return
		end

		for p, q in ipairs(self.TopBar:GetDescendants()) do
			if q:IsA("GuiButton") and q.Visible then
				local r, s, t = o.Position, q.AbsolutePosition, q.AbsoluteSize

				if r.X >= s.X and r.X <= s.X + t.X and r.Y >= s.Y and r.Y <= s.Y + t.Y then
					return
				end
			end
		end

		self.DragInput = o
		self.DragStart = o.Position
		self.StartPosition = self.Container.Position
	end)
	self:_connect(m.InputChanged, function(o)
		if not self.DragInput then
			return
		end

		local p = self.DragInput.UserInputType == Enum.UserInputType.Touch

		if p and o ~= self.DragInput then
			return
		end
		if not p and o.UserInputType ~= Enum.UserInputType.MouseMovement then
			return
		end

		local q = o.Position - self.DragStart

		if not self.IsDragging and q.Magnitude <= 5 then
			return
		end
		if not self.IsDragging then
			self.HasMoved = true

			self:_setDragging(true)
		end

		local r, s = self.Screen.AbsoluteSize, self.Container.AbsoluteSize
		local t = c.Layout.ViewportMargin
		local u = r.X * self.StartPosition.X.Scale + self.StartPosition.X.Offset + q.X
		local v = r.Y * self.StartPosition.Y.Scale + self.StartPosition.Y.Offset + q.Y

		u = math.clamp(u, s.X / 2 + t, math.max(s.X / 2 + t, r.X - s.X / 2 - t))
		v = math.clamp(v, s.Y / 2 + t, math.max(s.Y / 2 + t, r.Y - s.Y / 2 - t))
		self.Container.Position = UDim2.fromOffset(u, v)
	end)
	self:_connect(m.InputEnded, function(o)
		if o == self.DragInput then
			finish()
		end
	end)
	self:_connect(m.WindowFocusReleased, finish)
end
function k:_enableShortcutDrag()
	self.ShortcutDragDelta = 0
	self.ShortcutIsDragging = false
	self.ShortcutDragInput = nil
	self.ShortcutDragStart = nil
	self.ShortcutStartPosition = nil

	self.ShortcutContainer.InputBegan:Connect(function(o)
		if o.UserInputType ~= Enum.UserInputType.MouseButton1 and o.UserInputType ~= Enum.UserInputType.Touch then
			return
		end

		self.ShortcutIsDragging = true
		self.ShortcutDragStart = o.Position
		self.ShortcutStartPosition = self.ShortcutContainer.Position
		self.ShortcutDragInput = o
		self.ShortcutDragDelta = 0
	end)
	self.ShortcutContainer.InputEnded:Connect(function(o)
		if o == self.ShortcutDragInput then
			self.ShortcutIsDragging = false
			self.ShortcutDragInput = nil
		end
	end)
	self:_connect(m.InputChanged, function(o)
		if not self.ShortcutIsDragging then
			return
		end
		if o.UserInputType ~= Enum.UserInputType.MouseMovement and o.UserInputType ~= Enum.UserInputType.Touch then
			return
		end

		local p = o.Position - self.ShortcutDragStart

		self.ShortcutDragDelta = p.Magnitude
		self.ShortcutContainer.Position = UDim2.new(
			self.ShortcutStartPosition.X.Scale,
			self.ShortcutStartPosition.X.Offset + p.X,
			self.ShortcutStartPosition.Y.Scale,
			self.ShortcutStartPosition.Y.Offset + p.Y
		)
	end)
	self:_connect(m.InputEnded, function(o)
		if o.UserInputType == Enum.UserInputType.MouseButton1 or o.UserInputType == Enum.UserInputType.Touch then
			self.ShortcutIsDragging = false

			if o == self.ShortcutDragInput then
				self.ShortcutDragInput = nil
			end
		end
	end)
end
function k:CloseOverlays(o)
	if self.ActiveSlider then
		self.ActiveSlider:CloseEditor(o)
	end
	if self.ModalStack and #self.ModalStack > 0 then
		h.CloseAll(self, o)
	elseif self.ActiveDropdown then
		self.ActiveDropdown:Close(o)
	end
end
function k:SetActiveDropdown(o)
	if o and self.ActiveSlider then
		self.ActiveSlider:CloseEditor(true)
	end

	self:HideTooltip()

	if self.ActiveDropdown and self.ActiveDropdown ~= o then
		self:CloseOverlays(true)
	end

	self.ActiveDropdown = o
	self.BackDrop.Visible = o ~= nil

	if not o then
		self.BackDrop.BackgroundTransparency = 1
	end
	if self.LockedScroll and self.LockedScroll.Parent then
		self.LockedScroll.ScrollingEnabled = self.PreModalScrolling ~= false
	end

	self.LockedScroll = if o and self.ActiveTab then self.ActiveTab.Container else nil
	self.PreModalScrolling = if self.LockedScroll then self.LockedScroll.ScrollingEnabled else nil

	if self.LockedScroll then
		self.LockedScroll.ScrollingEnabled = false
	end
end
function k:GetOverlayParent()
	return self.OverlayRoot
end
function k:SetFlags(o: { [string]: any })
	self.Flags = o

	return self
end
function k:SetFlgas(o: { [string]: any })
	return self:SetFlags(o)
end
function k:RegisterTab(o)
	table.insert(self.Tabs, o)

	if not self.ActiveTab then
		self:ActivateTab(o)
	end
end
function k:ActivateTab(o)
	self:CloseOverlays(true)
	self:HideTooltip()

	if self.ActiveDropdown then
		self:CloseOverlays(true)
	end

	self.ActiveTab = o

	for p, q in ipairs(self.Tabs) do
		local r = q == o

		q:SetActive(r)
	end
end
function k:AddTab(o: string, p: string?)
	local q = g.new(self, o, p)

	self:RegisterTab(q)

	return q
end
function k:SetDiscordLink(o: string)
	self.DiscordLink = o

	if self.DiscordText then
		self.DiscordText.Text = o
	end
end
function k:SetHide(o: boolean)
	if o then
		self:Close()
	else
		self:Restore()
	end
end
function k:SetTransparency(o: number)
	self.Transparency = o

	if self.Container and self.Container.Visible then
		self.Container.GroupTransparency = o
	end
end

return k

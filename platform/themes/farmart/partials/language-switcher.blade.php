@php
    $supportedLocales = Language::getSupportedLocales();
    if (empty($options)) {
        $options = [
            'before' => '',
            'lang_flag' => true,
            'lang_name' => true,
            'class' => '',
            'after' => '',
        ];
    }
@endphp

@if ($supportedLocales && count($supportedLocales) > 1)
    @php
        $languageDisplay = setting('language_display', 'all');
    @endphp
    @if (setting('language_switcher_display', 'dropdown') == 'dropdown')
        <li>
            {!! Arr::get($options, 'before') !!}
            <span class="language-dropdown-active">
                @if (Arr::get($options, 'lang_flag', true) && ($languageDisplay == 'all' || $languageDisplay == 'flag'))
                    {!! language_flag(Language::getCurrentLocaleFlag(), Language::getCurrentLocaleName()) !!}
                @endif
                @if (Arr::get($options, 'lang_name', true) && ($languageDisplay == 'all' || $languageDisplay == 'name'))
                    {{ Language::getCurrentLocaleName() }}
                @endif
                <span class="svg-icon">
                    <svg>
                        <use
                            href="#svg-icon-chevron-down"
                            xlink:href="#svg-icon-chevron-down"
                        ></use>
                    </svg>
                </span>
            </span>
            <ul class="language-dropdown {{ Arr::get($options, 'class') }}">
                @foreach ($supportedLocales as $localeCode => $properties)
                    @if ($localeCode != Language::getCurrentLocale())
                        <li>
                            <a href="{{ Language::getSwitcherUrl($localeCode, $properties['lang_code']) }}">
                                @if (Arr::get($options, 'lang_flag', true) && ($languageDisplay == 'all' || $languageDisplay == 'flag'))
                                    {!! language_flag($properties['lang_flag'], $properties['lang_name']) !!}
                                @endif
                                @if (Arr::get($options, 'lang_name', true) && ($languageDisplay == 'all' || $languageDisplay == 'name'))
                                    <span>{{ $properties['lang_name'] }}</span>
                                @endif
                            </a>
                        </li>
                    @endif
                @endforeach
            </ul>
            {!! Arr::get($options, 'after') !!}
        </li>
    @else
        @foreach ($supportedLocales as $localeCode => $properties)
            @if ($localeCode != Language::getCurrentLocale())
                <li>
                    <a href="{{ Language::getSwitcherUrl($localeCode, $properties['lang_code']) }}">
                        @if (Arr::get($options, 'lang_flag', true) && ($languageDisplay == 'all' || $languageDisplay == 'flag'))
                            {!! language_flag($properties['lang_flag'], $properties['lang_name']) !!}
                        @endif
                        @if (Arr::get($options, 'lang_name', true) && ($languageDisplay == 'all' || $languageDisplay == 'name'))
                            &nbsp;<span>{{ $properties['lang_name'] }}</span>
                        @endif
                    </a>
                </li>
            @endif
        @endforeach
    @endif
@endif

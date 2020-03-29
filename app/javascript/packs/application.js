import "bootstrap";
import { displayGemOnClick } from '../components/astromon';
import { gemEffectOnLoad } from '../components/gem-effect';
import { gemSelectOnClick } from '../components/gem-select';
import { filterSelectOnClick } from '../components/filter-select';
import { switchOnClick } from '../components/switch';
import { categoryDisplayOnClick } from '../components/category-display';
import { navOnScroll } from '../components/nav-scroll';

displayGemOnClick();
gemEffectOnLoad();
switchOnClick();
filterSelectOnClick();
gemSelectOnClick();
categoryDisplayOnClick();
navOnScroll();

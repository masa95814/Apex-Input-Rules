/**
 * 入力チェッククラス
 *
 */
public class InputCheck {

    /**
     * 必須
     * @param  str チェック対象の文字列
     * @return true     必須チェック引っかかる
     * @return false    必須チェック引っかからない
     */
    public static Boolean nullCheck(String str) {
        if (String.isBlank(str)) return true;
        return false;
    }

    /**
     * 全角
     * @param  str   チェック対象の文字列
     * @return true  全角チェック引っかかる
     * @return false 全角チェック引っかからない
     */
    public static Boolean fullWidthCheck(String str) {
        if (String.isNotBlank(str) && !Pattern.matches('[^ -~｡-ﾟ]+', str)) return true;
        return false;
    }

    /**
     * 半角
     * @param  str   チェック対象の文字列
     * @return true  半角チェック引っかかる
     * @return false 半角チェック引っかからない
     */
    public static Boolean halfWidthCheck(String str) {
        if (String.isNotBlank(str) && !Pattern.matches('[ -~]+', str)) return true;
        return false;
    }

    /**
     * カナ
     * @param  str   チェック対象の文字列
     * @return true  カナチェック引っかかる
     * @return false カナチェック引っかからない
     */
    public static Boolean kanaCheck(String str) {
        if (String.isNotBlank(str) && !Pattern.matches('^[ァ-ー]+$', str)) return true;
        return false;
    }
    /**
     * 文字数
     * @param  str   チェック対象の文字列
     * @param  len   チェック対象の文字数
     * @return true     文字数チェック引っかかる
     * @return false    文字数チェック引っかからない
     */
    public static Boolean lengthCheck(String str, Integer len) {
        if (String.isNotBlank(str) && str.length() > len) return true;
        return false;
    }
    /**
     * 形式  ハイフンなし７桁
     * @param  str   チェック対象の文字列
     * @return true  ハイフンチェック引っかかる
     * @return false ハイフンチェック引っかからない
     */
    public static Boolean hyphenCheck(String str) {
        if (String.isNotBlank(str) && !Pattern.matches('^\\d{7}$', str)) return true;
        return false;
    }
    /**
     * 形式  メール
     * @param  str   チェック対象の文字列
     * @return true  形式チェック引っかかる
     * @return false 形式チェック引っかからない
     */
    public static Boolean emailCheck(String str) {
        if (String.isNotBlank(str) && !Pattern.matches('^[A-Za-z0-9]{1}[A-Za-z0-9_.-]*@{1}[A-Za-z0-9_.-]{1,}\\.[A-Za-z0-9]{1,}$', str)) return true;
        return false;
    }
    /**
     * 形式  メール
     * @param  str   チェック対象の文字列
     * @return true  形式チェック引っかかる
     * @return false 形式チェック引っかからない
     */
    public static Boolean emailCheck2(String str) {
        if (String.isNotBlank(str) && !Pattern.matches('^((?:(?:(?:(?:(?:(?:[\\x20\\x09])+)?(?:\\((?:(?:(?:[\\x20\\x09])+)?(?:[\\x09\\x20-\\x28\\x2a-\\x7e]))*(?:(?:[\\x20\\x09])+)?\\)))*(?:(?:(?:(?:[\\x20\\x09])+)?(?:\\((?:(?:(?:[\\x20\\x09])+)?(?:[\\x09\\x20-\\x28\\x2a-\\x7e]))*(?:(?:[\\x20\\x09])+)?\\)))|(?:(?:[\\x20\\x09])+)))?(?:(?:[A-Za-z0-9!#\\$\\%&amp;\'*+\\-/=?\\^_`{|}~])+(?:[A-Za-z0-9!#\\$\\%&amp;\'*+\\-/=?\\^_`{|}~\\.])*)(?:(?:(?:[A-Za-z0-9!#\\$\\%&amp;\'*+\\-/=?\\^_`{|}~])+(?:[A-Za-z0-9!#\\$\\%&amp;\'*+\\-/=?\\^_`{|}~\\.])*)|(?:\\((?:(?:(?:[\\x20\\x09])+)?(?:[\\x09\\x20-\\x28\\x2a-\\x7e]))*(?:(?:[\\x20\\x09])+)?\\)))*)|(?:(?:(?:(?:(?:[\\x20\\x09])+)?(?:\\((?:(?:(?:[\\x20\\x09])+)?(?:[\\x09\\x20-\\x28\\x2a-\\x7e]))*(?:(?:[\\x20\\x09])+)?\\)))*(?:(?:(?:(?:[\\x20\\x09])+)?(?:\\((?:(?:(?:[\\x20\\x09])+)?(?:[\\x09\\x20-\\x28\\x2a-\\x7e]))*(?:(?:[\\x20\\x09])+)?\\)))|(?:(?:[\\x20\\x09])+)))?"(?:(?:\\((?:(?:(?:[\\x20\\x09])+)?(?:[\\x09\\x20-\\x28\\x2a-\\x7e]))*(?:(?:[\\x20\\x09])+)?\\))|(?:[A-Za-z0-9!#\\$\\%&amp;\'*+\\-/=?\\^_`{|}~\\.]))*"(?:\\((?:(?:(?:[\\x20\\x09])+)?(?:[\\x09\\x20-\\x28\\x2a-\\x7e]))*(?:(?:[\\x20\\x09])+)?\\))*))\\@(?:(?:\\((?:(?:(?:[\\x20\\x09])+)?(?:[\\x09\\x20-\\x28\\x2a-\\x7e]))*(?:(?:[\\x20\\x09])+)?\\))*(?:(?:[A-Za-z0-9!#\\$\\%&amp;\'*+/=?\\^_`{|}~])+(?:\\-+(?:[A-Za-z0-9!#\\$\\%&amp;\'*+/=?\\^_`{|}~])+)*(?:\\.(?:[A-Za-z0-9!#\\$\\%&amp;\'*+/=?\\^_`{|}~])+(?:\\-+(?:[A-Za-z0-9!#\\$\\%&amp;\'*+/=?\\^_`{|}~])+)*)+)(?:(?:(?:(?:[\\x20\\x09])+)?(?:\\((?:(?:(?:[\\x20\\x09])+)?(?:[\\x09\\x20-\\x28\\x2a-\\x7e]))*(?:(?:[\\x20\\x09])+)?\\)))*(?:(?:(?:(?:[\\x20\\x09])+)?(?:\\((?:(?:(?:[\\x20\\x09])+)?(?:[\\x09\\x20-\\x28\\x2a-\\x7e]))*(?:(?:[\\x20\\x09])+)?\\)))|(?:(?:[\\x20\\x09])+)))?))$', str)) return true;
        return false;
    }
    /**
     * 形式  電話番号
     * @param  str   チェック対象の文字列
     * @return true  形式チェック引っかかる
     * @return false 形式チェック引っかからない
     */
    public static Boolean phoneCheck(String str) {
        if (String.isNotBlank(str) && !Pattern.matches('^0\\d{9,10}$', str)) return true;
        return false;
    }
    /**
     * チェック判定
     * @param  lst   チェック対象のリスト
     * @return true  チェック判定引っかかる
     * @return false チェック判定引っかからない
     */
    public static Boolean checkBoxCheck(List<Boolean> lst) {
        return !lst.contains(true);
    }
}

__author__ = 'Neta'


class TranslatedPage:
    def __init__(self, he_title, en_title, he_page_id=None, en_page_id=None, he_ver_id=None,
                 en_ver_id=None, he_text=None, talk_text=None, edit_sum=None, en_text=None,
                 translated=None, current_he_page_id=None, current_he_text=None):
        self.he_page_id = he_page_id
        self.he_ver_id = he_ver_id
        self.he_title = he_title
        self.en_page_id = en_page_id
        self.en_ver_id = en_ver_id
        self.en_title = en_title
        self.he_text = he_text
        self.en_text = en_text
        self.talk_text = talk_text
        self.edit_sum = edit_sum
        self.translated = translated
        self.current_he_page_id = current_he_page_id
        self.current_he_text = current_he_text

    def get_en_page_id(self):
        return self.en_page_id

    def set_en_page_id(self, en_page_id):
        self.en_page_id = en_page_id

    def get_he_page_id(self):
        return self.he_page_id

    def set_he_page_id(self, he_page_id):
        self.he_page_id = he_page_id

    def get_en_title(self):
        return self.en_title.lower()

    def get_he_title(self):
        return self.he_title.lower()

    def get_en_ver_id(self):
        return self.en_ver_id

    def get_he_ver_id(self):
        return (self.he_ver_id)

    def set_he_text(self, text):
        self.he_text = text

    def get_he_text(self):
        return self.he_text.lower()

    def set_en_text(self, text):
        self.en_text = text

    def get_en_text(self):
        return self.en_text.lower()

    def set_talk_text(self, text):
        self.talk_text = text

    def get_talk_text(self):
        if self.talk_text is not None:
            return self.talk_text.lower()
        else:
            return self.talk_text

    def set_edit_sum(self, edit_sum):
        self.edit_sum = edit_sum

    def get_edit_sum(self):
        return self.edit_sum

    def get_current_he_page_id(self):
        return self.current_he_page_id

    def set_current_he_page_id(self, current_he_page_id):
        self.current_he_page_id = current_he_page_id

    def get_current_he_text(self):
        return self.current_he_text

    def set_current_he_text(self, current_he_text):
        self.current_he_text = current_he_text

    def find_en_counterpart(self, he_en_dict):
        """

        :param he_en_dict: a dictionary from he-id to en-id.
        :return: en_id if it has one, otherwise returns -1.
        """
        return (he_en_dict.get(self.he_page_id, -1))

    def find_he_counterpart(self, en_he_dict):
        """

        :param en_he_dict: a dictionary from en-id to he-id.
        :return: he_id if it has one, otherwise returns -2.
        """
        return (en_he_dict.get(self.en_page_id, -2))

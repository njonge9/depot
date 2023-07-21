module ApplicationHelper
    def truncate_action_text_description(description, length = 100, omission = '...')
        truncate(sanitize(strip_tags(description.to_plain_text)), length: length, omission: omission).html_safe
    end
end

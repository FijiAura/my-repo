def custom_replace(original_text):
    """
    Replace specific characters in the original text with predefined strings.

    Parameters:
    original_text (str): The original string where text needs to be replaced.

    Returns:
    str: The modified string with replacements.
    """
    replacements = {
        ">": "i ",
        "<": "use ",
        "+": "arch ",
        "-": "linux ",
        ".": "btw ",
        ",": "by ",
        "[": "the ",
        "]": "way "
    }

    modified_text = original_text
    for old, new in replacements.items():
        modified_text = modified_text.replace(old, new)

    return modified_text

# Example usage
original_string = "-[------->+<]>-.-[->+++++<]>++.+++++++..+++.[--->+<]>-----.---[->+++<]>.-[--->+<]>---.+++.------.--------."
modified_string = custom_replace(original_string)
print("Original String:", original_string)
print("Modified String:", modified_string)
#PS: Remove the last space

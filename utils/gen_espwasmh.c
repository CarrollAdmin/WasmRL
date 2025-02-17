#include <stdio.h>

int main() {
    FILE *output_file_clear = fopen("esp_wasm.h", "w");  // Open in "w" mode to clear the file initially
    if (output_file_clear == NULL) {
        fprintf(stderr, "Error opening output file.\n");
        return 1;
    }
    fclose(output_file_clear);
    
    FILE *input_file = fopen("test_inter.txt", "r");
    FILE *output_file = fopen("esp_wasm.h", "a");

    if (input_file == NULL || output_file == NULL) {
        fprintf(stderr, "Error opening files.\n");
        return 1;
    }
    fprintf(output_file, "#if WASM_ENABLE_INTERP != 0\n");
    char buffer[25600];  // Adjust the buffer size as needed

    // Read line by line and write to the output file
    while (fgets(buffer, sizeof(buffer), input_file) != NULL) {
        fprintf(output_file, "%s", buffer);
    }
    fprintf(output_file, "#endif\n"); 
    fprintf(output_file, "\n"); 
    fclose(input_file);
    fclose(output_file);
    printf("Generated interpreter 'esp_wasm.h' has been created and written successfully.\n");

    FILE *input_file_2 = fopen("test_aot.txt", "r");
    FILE *output_file_2 = fopen("esp_wasm.h", "a");
    if (input_file_2 == NULL || output_file_2 == NULL) {
        fprintf(stderr, "Error opening files.\n");
        return 1;
    }
    fprintf(output_file_2, "#if WASM_ENABLE_AOT != 0\n");
    char buffer_2[2560];  // Adjust the buffer size as needed
    // Read line by line and write to the output file
    while (fgets(buffer_2, sizeof(buffer_2), input_file_2) != NULL) {
        fprintf(output_file_2, "%s", buffer_2);
    }
    fprintf(output_file_2, "#endif\n"); // Output the array length
    fclose(input_file_2);
    fclose(output_file_2);
    printf("Generated aot 'esp_wasm.h' has been created and written successfully.\n");

    return 0;
}

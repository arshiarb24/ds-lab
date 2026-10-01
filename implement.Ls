{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "authorship_tag": "ABX9TyNukMOInqpEDutNTV7qfY6I",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    },
    "language_info": {
      "name": "python"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/arshiarb24/ds-lab/blob/main/implement.Ls\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "source": [
        "def search(arr, n, x):\n",
        "    for i in range (0, n):\n",
        "        if (arr[i] == x):\n",
        "            return i\n",
        "    return -1\n",
        "\n",
        "arr = [ 2, 3, 4, 10, 40 ]\n",
        "x = 10\n",
        "n = len(arr)\n",
        "result = search(arr, n, x)\n",
        "\n",
        "if(result == -1):\n",
        "    print(\"Element is not present in array\")\n",
        "else:\n",
        "    print(\"Element is present at index\", result)"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "rIgQH5t8XU0e",
        "outputId": "35ee7322-a277-4b9b-edc2-6251de15f735"
      },
      "execution_count": 14,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "Element is present at index 3\n"
          ]
        }
      ]
    }
  ]
}
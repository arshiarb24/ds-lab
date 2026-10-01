{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "authorship_tag": "ABX9TyN+cQ369vQiCC6RKhTjBlXE",
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
        "<a href=\"https://colab.research.google.com/github/arshiarb24/ds-lab/blob/main/traversal.bst\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "source": [
        "INT_MIN = -2**32\n",
        "\n",
        "def canRepresentBST(pre):\n",
        "    s = []\n",
        "    root = INT_MIN\n",
        "    for value in pre:\n",
        "        if value < root:\n",
        "            return False\n",
        "        while (len(s) > 0 and s[-1] < value):\n",
        "            root = s.pop()\n",
        "        s.append(value)\n",
        "    return True\n",
        "\n",
        "pre1 = [40, 30, 35, 80, 100]\n",
        "print(\"true\" if canRepresentBST(pre1) == True else \"false\")\n",
        "pre2 = [40, 30, 35, 20, 80, 100]\n",
        "print(\"true\" if canRepresentBST(pre2) == True else \"false\")"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "ZIqQ8FU-WU_O",
        "outputId": "6e1b1fdc-8f79-41b2-85a6-053358b69ca0"
      },
      "execution_count": 10,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "true\n",
            "false\n"
          ]
        }
      ]
    }
  ]
}